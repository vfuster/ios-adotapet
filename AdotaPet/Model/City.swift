//
//  City.swift
//  AdotaPet
//
//  Created by Valeria on 09/05/21.
//

import Foundation

enum City: CaseIterable {
    case campinas
    case curitiba
    case saoPaulo
    case rioDeJaneiro
    
    var cityDescription: String {
        switch self {
        case .campinas:
            return "Campinas"
        case .curitiba:
            return "Curitiba"
        case .saoPaulo:
            return "São Paulo"
        case .rioDeJaneiro:
            return "Rio de Janeiro"
        }
    }
}
