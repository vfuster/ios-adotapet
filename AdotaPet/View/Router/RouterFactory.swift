//
//  AppRouter.swift
//  AdotaPet
//
//  Created by Valeria on 29/05/21.
//

import UIKit


class RouterFactory {
    
    private let storyboard = UIStoryboard(name: "Main", bundle: nil)
    
    func makePetDescription(pet: Pet) -> PetDescriptionViewController {
        let controller = storyboard.instantiateViewController(identifier: "PetDescription") as! PetDescriptionViewController
        controller.selectedPet = pet
        
        return controller
    }
    
    func makeCityPicker(selectedCity: City, delegate: CityPickerViewControllerDelegate) -> CityPickerViewController {
        let controller = storyboard.instantiateViewController(identifier: "CityPicker") as! CityPickerViewController
        
        controller.selectedCity = selectedCity
        controller.delegate = delegate
        
        return controller
    }
    
    func makeRequestAdoption(selectedPet: Pet) -> RequestAdoptionViewController {
        let controller = storyboard.instantiateViewController(identifier: "RequestAdoption") as! RequestAdoptionViewController
        
        controller.petToBeAdopted = selectedPet
        return controller
    }
}


