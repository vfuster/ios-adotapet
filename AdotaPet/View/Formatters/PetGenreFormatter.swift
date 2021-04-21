//
//  PetSexFormatter.swift
//  AdotaPet
//
//  Created by Valeria on 19/04/21.
//

import Foundation

class PetGenreFormatter {
    
    func getGenreText(genre: Genre) -> String {
        switch genre {
        case .female:
            return "Fêmea"
        case .male:
            return "Macho"
        }
    }
    
    func getGenreImageName(genre: Genre) -> String {
        switch genre {
        case .female:
            return "female.png"
        case .male:
            return "male.png"
        }
    }
}


