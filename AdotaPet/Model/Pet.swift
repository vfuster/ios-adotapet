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
    let category: Category
    let genre: Genre
    let photoPath: String
    let city: City
    
    init(name: String, description: String, ageInMonths: Int, breed: String, category: Category, genre: Genre, photoPath: String, city: City) {
        self.name = name
        self.description = description
        self.ageInMonths = ageInMonths
        self.breed = breed
        self.category = category
        self.genre = genre
        self.photoPath = photoPath
        self.city = city
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

