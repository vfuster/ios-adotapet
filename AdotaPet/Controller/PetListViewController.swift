//
//  PetListViewController.swift
//  AdotaPet
//
//  Created by Valeria on 16/04/21.
//

import UIKit

class PetListViewController: UIViewController, UICollectionViewDataSource {
    
    @IBOutlet weak var petCollection: UICollectionView!
    @IBOutlet weak var viewLocation: UIView!
    @IBOutlet weak var imageIcon: UIImageView!
    @IBOutlet weak var imageUser: UIImageView!
    
    let petList: Array<Pet> = PetDAO().returnAllPets()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        petCollection.dataSource = self
        setupUserPhoto()
        setupViewLocationBorder()
    }
    
    // MARK: Collection DataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.petList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let petCell = collectionView.dequeueReusableCell(withReuseIdentifier: "petCell", for: indexPath) as! PetListCollectionViewCell
        
        let currentPet = petList[indexPath.item]
        
        let formatterPet = PetAgeFormatter()
        let formatterGenre = PetGenreFormatter()
        
        
        petCell.labelName.text = currentPet.name
        petCell.labelBreed.text = currentPet.breed
        petCell.labelGenre.text = formatterGenre.getGenreText(genre: currentPet.genre)
        petCell.iconGenre.image = UIImage(named: formatterGenre.getGenreImageName(genre: currentPet.genre))
        petCell.labelAge.text = formatterPet.formattedAge(ageInMonths: currentPet.ageInMonths)
        petCell.imagePet.image = UIImage(named: currentPet.photoPath)
        
        petCell.layer.cornerRadius = 25
        
        return petCell
    }
    
    func setupUserPhoto() {
        imageUser.layer.cornerRadius = 20
        imageUser.image = UIImage(named: "user_avatar.jpeg")
    }
    
    func setupViewLocationBorder() {
        viewLocation.layer.cornerRadius = 20
    }
    
}
