//
//  PetAgeFormatter.swift
//  AdotaPet
//
//  Created by Valeria on 16/04/21.
//

import Foundation

class PetAgeFormatter {
    
    func formattedAge(ageInMonths: Int) -> String {
        if ageInMonths < 12 {
            return "\(ageInMonths) meses"
        } else {
            let ageInYears = Int(ageInMonths / 12)
            return "\(ageInYears) anos"
        }
    }
    
}
