//
//  PetDescriptionViewController.swift
//  AdotaPet
//
//  Created by Valeria on 19/04/21.
//

import UIKit

class PetDescriptionViewController: UIViewController {
    
    
    @IBOutlet weak var petPhoto: UIImageView!
    @IBOutlet weak var petName: UILabel!
    @IBOutlet weak var petGenreIcon: UIImageView!
    @IBOutlet weak var petBreed: UILabel!
    @IBOutlet weak var petAge: UILabel!
    @IBOutlet weak var petDescription: UILabel!
    @IBOutlet weak var petAdoption: UIButton!
    @IBOutlet weak var petMainInformationBox: UIView!
    
    var selectedPet: Pet?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupInformationBox()
        setupButtonAdoption()
        setup()
        setupShadowMainInformationBox()
    }
    
    func setup() {
        
        let formatterPet = PetAgeFormatter()
        let formatterGenre = PetGenreFormatter()
        
        if let pet = selectedPet {
            self.petName.text = pet.name
            self.petPhoto.image = UIImage(named: pet.photoPath)
            self.petBreed.text = pet.breed
            self.petDescription.text = pet.description
            self.petAge.text = formatterPet.formattedAge(ageInMonths: pet.ageInMonths)
            self.petGenreIcon.image = UIImage(named: formatterGenre.getGenreImageName(genre: pet.genre))
        }
    }
    
    func setupInformationBox() {
        petMainInformationBox.layer.cornerRadius = 20
    }
    
    func setupButtonAdoption() {
        petAdoption.layer.cornerRadius = 25
    }
    
    func setupShadowMainInformationBox() {
        petMainInformationBox.layer.shadowOffset = CGSize(width: 0, height: 8)
        petMainInformationBox.layer.shadowRadius = 4
        petMainInformationBox.layer.shadowOpacity = 0.1
        petMainInformationBox.layer.shadowColor = UIColor.gray.cgColor
    }
    
}
