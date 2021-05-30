//
//  RouterFactoryTests.swift
//  AdotaPetTests
//
//  Created by Valeria on 29/05/21.
//

import XCTest

@testable import AdotaPet

class RouterFactoryTests: XCTestCase {
    
    private let sut = RouterFactory()
    
    func test_makePetDescription_shouldSetProperlyPet() {
        let pet = Pet(name: "Bob", description: "Bob is a good guy", ageInMonths: 20, breed: "Beagle", category: .dog, genre: .male, photoPath: "", city: .saoPaulo)
        
        let controller = sut.makePetDescription(pet: pet)
        
        XCTAssertEqual(controller.selectedPet, pet)
    }
    
    func test_makeRequestAdoption_shouldSetProperlyPetAdopted() {
        
        let pet = Pet(name: "Bolinha", description: "Bolinha é um gato gordinho", ageInMonths: 9, breed: "Angora", category: .cat, genre: .male, photoPath: "", city: .campinas)
        
        let controller = sut.makeRequestAdoption(selectedPet: pet)
        
        XCTAssertEqual(controller.petToBeAdopted, pet)
    }
    
    func test_makeCityPicke_shouldSetCity() {
        let city = City.campinas
        let delegate = CityPickerViewControllerDelegateDummy()
        let controller = sut.makeCityPicker(selectedCity: city, delegate: delegate)
        
        XCTAssertEqual(controller.selectedCity, city)
        XCTAssertNotNil(controller.delegate)
    }
}
