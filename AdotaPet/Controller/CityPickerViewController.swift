//
//  CityPickerViewController.swift
//  AdotaPet
//
//  Created by Valeria on 09/05/21.
//

import UIKit

class CityPickerViewController: UIViewController, UITableViewDataSource {

    let listOfCities = City.allCases
    var selectedCity: City?
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
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
        }

        return cell
    }
    
    
}
