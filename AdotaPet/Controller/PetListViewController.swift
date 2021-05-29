//
//  PetListViewController.swift
//  AdotaPet
//
//  Created by Valeria on 16/04/21.
//

import UIKit

class PetListViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout, CityPickerViewControllerDelegate {
    
    @IBOutlet private weak var petCollection: UICollectionView!
    @IBOutlet private weak var viewLocation: UIView!
    @IBOutlet private weak var imageIcon: UIImageView!
    @IBOutlet private weak var imageUser: UIImageView!
    @IBOutlet private weak var buttonLocation: UIView!
    @IBOutlet private weak var cityLabel: UILabel!
    
    private var petList: Array<Pet> = PetDAO().returnAllPetsIn(city: .campinas)
    private var selectedCity: City = .campinas
    private let router = RouterFactory()

    override func viewDidLoad() {
        super.viewDidLoad()
        petCollection.dataSource = self
        petCollection.delegate = self
        setupUserPhoto()
        setupViewLocationBorder()
        setupTapGestureOnButtonLocation()
        cityLabel.text = selectedCity.cityDescription
    }
    
    // MARK: Collection DataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.petList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let petCell = collectionView.dequeueReusableCell(withReuseIdentifier: "petCell", for: indexPath) as! PetListCollectionViewCell
        
        let currentPet = petList[indexPath.item]
        petCell.configure(with: currentPet)
        
        return petCell
    }
    
    // MARK: Collection Flow Layout
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let cellWidth = collectionView.bounds.width / 2
        return CGSize(width: cellWidth - 6, height: 238)
    }
    
    // MARK: Collection Delegate
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let pet = petList[indexPath.item]
        let controller = router.makePetDescription(pet: pet)
        let navigationController = UINavigationController(rootViewController: controller)
        navigationController.isNavigationBarHidden = true
        
        self.present(navigationController, animated: true, completion: nil)
    }
    
    private func setupUserPhoto() {
        imageUser.layer.cornerRadius = 20
        imageUser.image = UIImage(named: "user_avatar.jpeg")
    }
    
    private func setupViewLocationBorder() {
        viewLocation.layer.cornerRadius = 20
    }
    
    // MARK: - Tap Gesture
    private func setupTapGestureOnButtonLocation() {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(self.tapGestureOnButtonLocation))
        buttonLocation.addGestureRecognizer(gesture)
    }
    
    @objc private func tapGestureOnButtonLocation() {
        let controller = router.makeCityPicker(selectedCity: selectedCity, delegate: self)
        self.present(controller, animated: true, completion: nil)
    }
    
    func didChangeSelectedCity(city: City) {
        selectedCity = city
        cityLabel.text = selectedCity.cityDescription
    
        petList = PetDAO().returnAllPetsIn(city: city)
        petCollection.reloadData()
    }
    
}
