//
//  RequestAdoptionViewController.swift
//  AdotaPet
//
//  Created by Valeria on 27/04/21.
//

import UIKit

class RequestAdoptionViewController: UIViewController {

    private enum ResidenceSelectionState {
        case unselected
        case selectedHouse
        case selectedApartament
    }
    
    var petToBeAdopted: Pet?
    
    private var residenceState: ResidenceSelectionState = .unselected
    
    @IBOutlet private weak var requestAdoption: UIButton!
    @IBOutlet private weak var buttonHouse: UIView!
    @IBOutlet private weak var buttonApartament: UIView!
    @IBOutlet private weak var buttonSwitchResidence: UISwitch!
    @IBOutlet private weak var buttonSwitchMoney: UISwitch!
    @IBOutlet private weak var textAboutFinancial: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtonRequestAdoption()
        setupButtonResidence()
        setupTapGestureOnButtonHouse()
        setupTapGestureOnButtonApartament()
        showPetName()
    }
    
    // MARK: Private
    
    @IBAction private func backToPetDescription(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
    }
    
    private func showPetName() {
        if let pet = petToBeAdopted {
            
            let formatterGenre = PetGenreFormatter()
            
            self.textAboutFinancial.text = "Declaro possuir condição financeira para manter \(formatterGenre.getGenreArticle(genre: pet.genre )) \(pet.name)"
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
        view.backgroundColor = UIColor().getGray()
        view.layer.shadowOffset = CGSize(width: 0, height: 8)
        view.layer.shadowRadius = 4
        view.layer.shadowOpacity = 0.1
        view.layer.shadowColor = UIColor.gray.cgColor
    }
    
    // MARK: TapGesture House
    
    private func setupTapGestureOnButtonHouse() {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(self.handleTapOnButtonHouse))
        buttonHouse.addGestureRecognizer(gesture)
    }
    
    @objc private func handleTapOnButtonHouse() {
        residenceState = .selectedHouse
        applySelectedStyle(in: buttonHouse)
        applyDefaultStyle(in: buttonApartament)
        handleButtonState()
    }
    
    // TapGesture Apartament
    
    private func setupTapGestureOnButtonApartament() {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(self.handleTapButtonApartament))
        buttonApartament.addGestureRecognizer(gesture)
    }
    
    @objc private func handleTapButtonApartament() {
        residenceState = .selectedApartament
        applySelectedStyle(in: buttonApartament)
        applyDefaultStyle(in: buttonHouse)
        handleButtonState()
    }
    
    private func applySelectedStyle(in view: UIView) {
        view.backgroundColor = UIColor().getYellow()
        view.layer.borderWidth = 0
    }
    
    // Button Switch House
    @IBAction private func clickedSwitchButtonResidence(_ sender: Any) {
        handleButtonState()
    }
    
    // Button Switch Apartament
    @IBAction private func clickedSwitchButtonMoney(_ sender: Any) {
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
