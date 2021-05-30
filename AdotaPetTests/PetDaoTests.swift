//
//  PetDaoTests.swift
//  AdotaPetTests
//
//  Created by Valeria on 30/05/21.
//

import XCTest

@testable import AdotaPet

class PetDaoTests: XCTestCase {
    
    private let sut = PetDAO()
    
    func test_returnAllPetsIn_whenPassSomeCity_shouldReturnOnlyPetsInThatCity() {
        let city = City.campinas
        let petList = sut.returnAllPetsIn(city: city)
        
        for pet in petList {
            XCTAssertEqual(city, pet.city)
        }
    }
    
}
