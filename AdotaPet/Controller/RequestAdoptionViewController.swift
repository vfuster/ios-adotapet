//
//  RequestAdoptionViewController.swift
//  AdotaPet
//
//  Created by Valeria on 27/04/21.
//

import UIKit

class RequestAdoptionViewController: UIViewController {
    
    @IBOutlet weak var requestAdoption: UIButton!
    @IBOutlet weak var buttonHouse: UIView!
    @IBOutlet weak var buttonApartament: UIView!
    @IBOutlet weak var buttonSwitchResidence: UISwitch!
    @IBOutlet weak var buttonSwitchMoney: UISwitch!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtonRequestAdoption()
        setupButtonResidence()
        setupTapGestureOnButtonHouse()
        setupTapGestureOnButtonApartament()
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
        buttonHouse.backgroundColor = UIColor().getYellow()
        buttonHouse.layer.borderWidth = 0
        applyDefaultStyle(in: buttonApartament)
    }
    
    // TapGesture Apartament
    
    private func setupTapGestureOnButtonApartament() {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(self.handleTapButtonApartament))
        buttonApartament.addGestureRecognizer(gesture)
    }
    
    @objc func handleTapButtonApartament() {
        buttonApartament.backgroundColor = UIColor().getYellow()
        buttonApartament.layer.borderWidth = 0
        applyDefaultStyle(in: buttonHouse)
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
        if buttonSwitchMoney.isOn && buttonSwitchResidence.isOn {
            requestAdoption.isEnabled = true
            requestAdoption.backgroundColor = UIColor().getYellow()
        } else {
            requestAdoption.isEnabled = false
            requestAdoption.backgroundColor = UIColor().getGray()
        }
    }
}
