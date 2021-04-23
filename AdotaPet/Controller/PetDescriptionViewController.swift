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
    
    let petList: Array<Pet> = PetDAO().returnAllPets()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupInformationBox()
        setupButtonAdoption()
    }
    
    func setupInformationBox() {
        petMainInformationBox.layer.cornerRadius = 20
    }
    
    func setupButtonAdoption() {
        petAdoption.layer.cornerRadius = 25
    }
}
