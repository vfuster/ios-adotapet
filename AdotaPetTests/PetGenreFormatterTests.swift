//
//  PetGenreFormatterTests.swift
//  AdotaPetTests
//
//  Created by Valeria on 27/05/21.
//

import XCTest

@testable import AdotaPet

class PerGenreFormatterTests: XCTestCase {
    
    private let sut = PetGenreFormatter()
    
    func test_getGenreText_whenUsesFemale_shouldReturnFemale() {
        let genre = sut.getGenreText(genre: .female)
        
        XCTAssertEqual(genre, "Fêmea")
    }
    
    func test_getGenreText_whenUsesMale_shouldReturnMale() {
        let genre = sut.getGenreText(genre: .male)
        
        XCTAssertEqual(genre, "Macho")
    }
    
    func test_getGenreImageName_whenGenreIsFemale_andShouldUseDarkImage_shouldReturnImageName() {
        let imageName = sut.getGenreImageName(genre: .female, shouldUseDarkImage: true)
        
        XCTAssertEqual(imageName, "female-dark.png")
    }
    
    func test_getGenreImageName_whenGenreIsFemale_andShouldNotUseDarkImage_shouldReturnLightImage() {
        let imageName = sut.getGenreImageName(genre: .female, shouldUseDarkImage: false)
        
        XCTAssertEqual(imageName, "female-light.png")
    }
    
    func test_getGenreImageName_whenGenreIsMale_andShouldUsesDarkImage_shouldReturnImageName() {
        let imageName = sut.getGenreImageName(genre: .male, shouldUseDarkImage: true)
        
        XCTAssertEqual(imageName, "male-dark.png")
    }
    
    func test_getGenreImageName_whenGenreIsMale_andShouldNotUseDarkImage_shouldReturnImageName() {
        let imageName = sut.getGenreImageName(genre: .male, shouldUseDarkImage: false)
        
        XCTAssertEqual(imageName, "male-light.png")
    }
    
    func test_getGenreArticle_whenGenreIsFemale_shouldReturnA() {
        let article = sut.getGenreArticle(genre: .female)
        
        XCTAssertEqual(article, "a")
    }
    
    func test_getGenreArticle_whenGenreIsMale_shouldReturnO() {
        let article = sut.getGenreArticle(genre: .male)
        
        XCTAssertEqual(article, "o")
    }
}
