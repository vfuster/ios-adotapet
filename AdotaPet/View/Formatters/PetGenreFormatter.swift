//
//  PetGenreFormatter.swift
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
    
    func getGenreImageName(genre: Genre, shouldUseDarkImage: Bool) -> String {
        switch genre {
        case .female:
            return shouldUseDarkImage ? "female-dark.png" : "female-light.png"
           
        case .male:
            return shouldUseDarkImage ? "male-dark.png" : "male-light.png"
        }
    }
    
    func getGenreArticle(genre: Genre) -> String {
        switch genre {
        case .female:
            return "a"
        case .male:
            return "o"
        }
    }
}


