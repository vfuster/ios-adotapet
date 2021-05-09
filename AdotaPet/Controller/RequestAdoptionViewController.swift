//
//  RequestAdoptionViewController.swift
//  AdotaPet
//
//  Created by Valeria on 27/04/21.
//

import UIKit

enum ResidenceSelectionState {
    case unselected
    case selectedHouse
    case selectedApartament
}

class RequestAdoptionViewController: UIViewController {
    
    var petToBeAdopted: Pet?
    
    private var residenceState: ResidenceSelectionState = .unselected
    
    @IBOutlet weak var requestAdoption: UIButton!
    @IBOutlet weak var buttonHouse: UIView!
    @IBOutlet weak var buttonApartament: UIView!
    @IBOutlet weak var buttonSwitchResidence: UISwitch!
    @IBOutlet weak var buttonSwitchMoney: UISwitch!
    @IBOutlet weak var textAboutFinancial: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtonRequestAdoption()
        setupButtonResidence()
        setupTapGestureOnButtonHouse()
        setupTapGestureOnButtonApartament()
        showPetName()
    }
    
    private func showPetName() {
        if let pet = petToBeAdopted {
            
            let formatterGenre = PetGenreFormatter()
            
            self.textAboutFinancial.text = "Declaro possuir condição financeira para manter \(formatterGenre.getGenreArticle(genre: pet.genre)) \(pet.name)"
        }
    }
    
    private func setupButtonRequestAdoption() {
        requestAdoption.layer.cornerRadius = 20
    }
    
    private func setupButtonResidence() {
        applyDefaultStyle(in: buttonHouse)
        applyDefaultStyle(in: buttonApartament)
    }
    
    private func applyDefaultStyle(in view: UIView) {
        view.layer.cornerRadius = 20
        view.layer.borderColor = UIColor.lightGray.cgColor
        view.layer.borderWidth = 1
        view.backgroundColor = UIColor().getGray()
    }
    
    // TapGesture House
    
    private func setupTapGestureOnButtonHouse() {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(self.handleTapOnButtonHouse))
        buttonHouse.addGestureRecognizer(gesture)
    }
    
    @objc func handleTapOnButtonHouse() {
        residenceState = .selectedHouse
        buttonHouse.backgroundColor = UIColor().getYellow()
        buttonHouse.layer.borderWidth = 0
        applyDefaultStyle(in: buttonApartament)
        handleButtonState()
    }
    
    // TapGesture Apartament
    
    private func setupTapGestureOnButtonApartament() {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(self.handleTapButtonApartament))
        buttonApartament.addGestureRecognizer(gesture)
    }
    
    @objc func handleTapButtonApartament() {
        residenceState = .selectedApartament
        buttonApartament.backgroundColor = UIColor().getYellow()
        buttonApartament.layer.borderWidth = 0
        applyDefaultStyle(in: buttonHouse)
        handleButtonState()
    }
    
    // Button Switch House
    @IBAction func clickedSwitchButtonResidence(_ sender: Any) {
        handleButtonState()
    }
    
    // Button Switch Apartament
    @IBAction func clickedSwitchButtonMoney(_ sender: Any) {
        handleButtonState()
    }
    
    private func handleButtonState() {
        if buttonSwitchMoney.isOn && buttonSwitchResidence.isOn && residenceState != .unselected {
            requestAdoption.isEnabled = true
            requestAdoption.backgroundColor = UIColor().getYellow()
        } else {
            requestAdoption.isEnabled = false
            requestAdoption.backgroundColor = UIColor().getGray()
        }
    }
}
