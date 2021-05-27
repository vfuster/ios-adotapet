//
//  PetAgeFormatterTests.swift
//  AdotaPetTests
//
//  Created by Valeria on 26/05/21.
//

import XCTest

@testable import AdotaPet

class PetAgeFormatterTests: XCTestCase {
    
    private let sut = PetAgeFormatter()
    
    func test_formattedAge_whenAgeInMonthsIsZero_shouldReturnOneMonth() {
        let age = sut.formattedAge(ageInMonths: 0)
        
        XCTAssertEqual(age, "1 mês")
    }
    
    func test_formattedAge_whenInMonthsIsTen_sholdReturnTenMonths() {
        let age = sut.formattedAge(ageInMonths: 10)
        
        XCTAssertEqual(age, "10 meses")
    }
    
    func test_formatted_whenInMonthsIsTwelve_shouldReturnOneYear() {
        let age = sut.formattedAge(ageInMonths: 12)
        
        XCTAssertEqual(age, "1 ano")
    }
    
    func test_formatted_whenInMonthsIsTwentyFour_shouldReturnTwoYears() {
        let age = sut.formattedAge(ageInMonths: 24)
        
        XCTAssertEqual(age, "2 anos")
    }
    
    
}
