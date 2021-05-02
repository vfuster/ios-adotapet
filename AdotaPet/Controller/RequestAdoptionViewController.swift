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
        view.backgroundColor = UIColor(red: 247 / 255, green: 247 / 255, blue: 247 / 255, alpha: 1)
    }
    
    // TapGesture House
    
    private func setupTapGestureOnButtonHouse() {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(self.handleTapOnButtonHouse))
        buttonHouse.addGestureRecognizer(gesture)
    }
    
    @objc func handleTapOnButtonHouse() {
        buttonHouse.backgroundColor = UIColor(red: 255 / 255, green: 223 / 255, blue: 83 / 255, alpha: 1)
        buttonHouse.layer.borderWidth = 0
        applyDefaultStyle(in: buttonApartament)
    }
    
    // TapGesture Apartament
    
    private func setupTapGestureOnButtonApartament() {
        let gesture = UITapGestureRecognizer(target: self, action: #selector(self.handleTapButtonApartament))
        buttonApartament.addGestureRecognizer(gesture)
    }
    
    @objc func handleTapButtonApartament() {
        buttonApartament.backgroundColor = UIColor(red: 255 / 255, green: 223 / 255, blue: 83 / 225, alpha: 1)
        buttonApartament.layer.borderWidth = 0
        applyDefaultStyle(in: buttonHouse)
    }
    
}
