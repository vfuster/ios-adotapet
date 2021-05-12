//
//  PetListViewController.swift
//  AdotaPet
//
//  Created by Valeria on 16/04/21.
//

import UIKit

class PetListViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    @IBOutlet private weak var petCollection: UICollectionView!
    @IBOutlet private weak var viewLocation: UIView!
    @IBOutlet private weak var imageIcon: UIImageView!
    @IBOutlet private weak var imageUser: UIImageView!
    @IBOutlet private weak var buttonLocation: UIView!
    
    private let petList: Array<Pet> = PetDAO().returnAllPets()
    private var selectedCity: City = .campinas
    
    override func viewDidLoad() {
        super.viewDidLoad()
        petCollection.dataSource = self
        petCollection.delegate = self
        setupUserPhoto()
        setupViewLocationBorder()
        setupTapGestureOnButtonLocation()
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
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "PetDescription") as! PetDescriptionViewController
        controller.selectedPet = pet
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
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "CityPicker") as! CityPickerViewController
        
        controller.selectedCity = selectedCity
        
        self.present(controller, animated: true, completion: nil)
        
    }
    
}
