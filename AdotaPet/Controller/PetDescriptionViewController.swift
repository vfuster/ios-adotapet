//
//  PetDescriptionViewController.swift
//  AdotaPet
//
//  Created by Valeria on 19/04/21.
//

import UIKit

class PetDescriptionViewController: UIViewController {
    
    @IBOutlet private weak var petPhoto: UIImageView!
    @IBOutlet private weak var petName: UILabel!
    @IBOutlet private weak var petGenreIcon: UIImageView!
    @IBOutlet private weak var petBreed: UILabel!
    @IBOutlet private weak var petAge: UILabel!
    @IBOutlet private weak var petDescription: UILabel!
    @IBOutlet private weak var petAdoption: UIButton!
    @IBOutlet private weak var petMainInformationBox: UIView!
    
    var selectedPet: Pet?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupInformationBox()
        setupButtonAdoption()
        setupScreenContent()
        setupShadowMainInformationBox()
    }
    
    private func setupScreenContent() {
        if let pet = selectedPet {
            let formatterPet = PetAgeFormatter()
            let formatterGenre = PetGenreFormatter()
            
            self.petName.text = pet.name
            self.petPhoto.image = UIImage(named: pet.photoPath)
            self.petBreed.text = pet.breed
            self.petDescription.text = pet.description
            self.petAge.text = formatterPet.formattedAge(ageInMonths: pet.ageInMonths)
            self.petGenreIcon.image = UIImage(named: formatterGenre.getGenreImageName(genre: pet.genre, shouldUseDarkImage: true))
        }
    }
    
    private func setupInformationBox() {
        petMainInformationBox.layer.cornerRadius = 20
    }
    
    private func setupButtonAdoption() {
        petAdoption.layer.cornerRadius = 25
    }
    
    private func setupShadowMainInformationBox() {
        petMainInformationBox.layer.shadowOffset = CGSize(width: 0, height: 8)
        petMainInformationBox.layer.shadowRadius = 4
        petMainInformationBox.layer.shadowOpacity = 0.1
        petMainInformationBox.layer.shadowColor = UIColor.gray.cgColor
    }
    
    @IBAction private func backToPetList(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction private func tapAdoptionPet(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(identifier: "RequestAdoption") as! RequestAdoptionViewController
        controller.petToBeAdopted = selectedPet
        self.navigationController?.pushViewController(controller, animated: true)
    }
    
}
