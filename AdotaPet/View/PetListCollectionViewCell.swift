//
//  PetListCollectionViewCell.swift
//  AdotaPet
//
//  Created by Valeria on 16/04/21.
//

import UIKit

class PetListCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imagePet: UIImageView!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelBreed: UILabel!
    @IBOutlet weak var labelAge: UILabel!
    @IBOutlet weak var labelGenre: UILabel!
    @IBOutlet weak var iconGenre: UIImageView!
    
    private let formatterPet = PetAgeFormatter()
    private let formatterGenre = PetGenreFormatter()
    
    func configure(with pet: Pet) {
        labelName.text = pet.name
        labelBreed.text = pet.breed
        labelGenre.text = formatterGenre.getGenreText(genre: pet.genre)
        iconGenre.image = UIImage(named: formatterGenre.getGenreImageName(genre: pet.genre, shouldUseDarkImage: false))
    labelAge.text = formatterPet.formattedAge(ageInMonths: pet.ageInMonths)
        imagePet.image = UIImage(named: pet.photoPath)
        
        layer.cornerRadius = 25
    }
    
}
