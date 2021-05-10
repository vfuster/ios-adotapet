//
//  CityPickerViewController.swift
//  AdotaPet
//
//  Created by Valeria on 09/05/21.
//

import UIKit

class CityPickerViewController: UIViewController {
    
    let listOfCities = City.allCases
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(listOfCities)
    }
    
    
}
