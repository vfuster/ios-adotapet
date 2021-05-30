//
//  PetListCollectionViewCellTest.swift
//  AdotaPetTests
//
//  Created by Valeria on 30/05/21.
//

import XCTest

@testable import AdotaPet

class PetAgeFormatterTest: XCTestCase {
    
    func test_configure_shoulSetOutletsProperly() {
        
        let bundle = Bundle(for: PetListCollectionViewCell.self)
        guard let sut = bundle.loadNibNamed("PetListCollectionViewCell", owner: nil)?.first as? PetListCollectionViewCell else {
            return XCTFail("Can't find PetListCollectionViewCell")
        }
        
        let pet = Pet(name: "Bolinha", description: "cachorro gordinho e dahora!", ageInMonths: 9, breed: "salsicha", category: .dog, genre: .male, photoPath: "", city: .campinas)
        
        sut.configure(with: pet)
        
        XCTAssertEqual(sut.labelName.text, pet.name)
        XCTAssertEqual(sut.labelBreed.text, pet.breed)
        XCTAssertEqual(sut.labelGenre.text, "Macho")
        XCTAssertEqual(sut.labelAge.text, "9 meses")
    }
}
