//
//  RequestAdoptionViewController.swift
//  AdotaPet
//
//  Created by Valeria on 27/04/21.
//

import UIKit

class RequestAdoptionViewController: UIViewController {
    
    @IBOutlet weak var petOwnerName: UITextField!
    @IBOutlet weak var petOwnerPhone: UITextField!
    @IBOutlet weak var requestAdoption: UIButton!
    
    @IBOutlet weak var residenceTypeTitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupButtonRequestAdoption()
    }
    
    func setupButtonRequestAdoption() {
        requestAdoption.layer.cornerRadius = 20
    }
    
    
}
