//
//  Pet.swift
//  AdotaPet
//
//  Created by Valeria on 16/04/21.
//

import UIKit

class Pet {

    let name: String
    let description: String
    let ageInMonths: Int
    let breed: String
    let address: String
    let category: Category
    let genre: Genre
    let photoPath: String
    
    init(name: String, description: String, ageInMonths: Int, breed: String, adress: String, category: Category, genre: Genre, photoPath: String) {
        self.name = name
        self.description = description
        self.ageInMonths = ageInMonths
        self.breed = breed
        self.address = adress
        self.category = category
        self.genre = genre
        self.photoPath = photoPath
    }
    
}

enum Category {
    case cat
    case dog
    case bunny
    case parrot
}

enum Genre {
    case female
    case male
}

