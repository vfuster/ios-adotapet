//
//  CityPickerViewController.swift
//  AdotaPet
//
//  Created by Valeria on 09/05/21.
//

import UIKit

protocol CityPickerViewControllerDelegate: class {
    func didChangeSelectedCity(city: City)
}

class CityPickerViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    private let listOfCities = City.allCases
    var selectedCity: City?
    
    weak var delegate: CityPickerViewControllerDelegate?
    
    @IBOutlet private weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
    }
    
    // MARK: - Data Source
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listOfCities.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: .default, reuseIdentifier: nil)
        
        let currentCity = listOfCities[indexPath.row]
        cell.textLabel?.text = currentCity.cityDescription
        
        if currentCity == selectedCity {
            cell.accessoryType = .checkmark
            cell.tintColor = UIColor.darkGray
        }

        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let city = listOfCities[indexPath.row]
        delegate?.didChangeSelectedCity(city: city)
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction private func backToPetList(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}
