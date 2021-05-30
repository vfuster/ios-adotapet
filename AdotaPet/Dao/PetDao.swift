//
//  PetDao.swift
//  AdotaPet
//
//  Created by Valeria on 16/04/21.
//

import UIKit

class PetDAO {
    
    func returnAllPetsIn(city: City) -> [Pet] {
       
        let pet01 = Pet(name: "Margot", description: "Uma cachorrinha dócil e muito carinhosa. Ela ama carinho na barriga e sair para passear. Não possui nenhuma deficiencia ou algum tipo de cuidado médico especial! Uma verdadeira amiga para a vida toda" , ageInMonths: 13, breed: "Corgi", category: Category.dog, genre: Genre.female, photoPath: "dog_corgi.jpg", city: .campinas)
        
        let pet02 = Pet(name: "Costelinha", description: "Um gatinho gordinho e muito carinhoso. Gosta de amassar pãozinho e perseguir linhas de crochê, seu ponto fraco são mantinhas quentinhas, não pode ver uma que já se entrega a uma super soneca. Não possui nenhuma deficiencia ou algum tipo de cuidado médico especial! Um verdadeiro companheiro para vida e para as sonecas!", ageInMonths: 9, breed: "Thai", category: Category.cat, genre: Genre.male, photoPath: "cat_yellow.jpg", city: .campinas)
        
        let pet03 = Pet(name: "Salsicha", description: "Um cachorrinho super dócil e muito carinhoso. Ele ama carinho na barriga e sair para passear. Não possui nenhuma deficiencia ou algum tipo de cuidado médico especial! Um verdadeiro amigo para a vida toda.", ageInMonths: 32, breed: "Dachshund", category: Category.dog, genre: Genre.male, photoPath: "dog_salsicha.jpg", city: .curitiba)
        
        let pet04 = Pet(name: "Lua", description: "Eu me chamo Lua, sou uma gatinha muito estrategista nos carinhos e nossa... como eu amo um carinho! Meu motor de ronrom tá sempre ligado e algo que vocês já puderam notar é que eu sou um lindeza né? Garanto que seremos super amigas!", ageInMonths: 1, breed: "Viralata", category: Category.cat, genre: Genre.female, photoPath: "cat_smile.jpg", city: .rioDeJaneiro)
        
        let pet05 = Pet(name: "Bunny", description: "Eu me chamo Bunny, sou uma coelhinha muito estrategista nas brincadeiras e nossa... como eu amo brincar!, Se você me adotar iremos nos divertir muito!", ageInMonths: 3, breed: "Lop Miniatura", category: Category.bunny, genre: Genre.female, photoPath: "bunny_01.jpg", city: .saoPaulo)
        
        let pet06 = Pet(name: "Puppy", description: "Um cachorrinho super dócil e muito carinhoso. Ele ama carinho na barriga e sair para passear. Não possui nenhuma deficiencia ou algum tipo de cuidado médico especial! Um verdadeiro amigo para a vida toda.", ageInMonths: 5, breed: "Beagle", category: Category.dog, genre: Genre.female, photoPath: "dog_beagle.jpg", city: .curitiba)
        
        let pet07 = Pet(name: "Adamastor", description: "Eu sou um doguinho muito gente boa! Amo correr atrás de bolinhas, tenho um inimigo número 1...os chinelos de borracha, não posso ver um que já mordo ele inteiro! E ai vamos nos conhecer, promete te proteger do malignos chinelos", ageInMonths: 5, breed: "Shiba inu", category: Category.dog, genre: .male, photoPath: "shiba_inu.jpg", city: .rioDeJaneiro)
        
        let pet08 = Pet(name: "Bianco", description: "Olá, sou o famoso gatinho branco igual a neve. Sou super companheiro, adoro um pate, amassar pãozinho e tirar uma sonequinha das 10h até ás 18h é o meu hobbie preferido. E ai vamos ser grandes parceiros de sonecas aos domingos?", ageInMonths: 4, breed: "Khao Manee", category: Category.cat, genre: .male, photoPath: "white_cat.jpg", city: .saoPaulo)
        
        let pet09 = Pet(name: "Peralta", description: "Olá, como o meu nome já diz...sou uma menina super arteira, adora brincar com todo mundo! Bolinha amarelas são a minhas favoritas. Me adota! Tenho certeza que vamos brincar muito!", ageInMonths: 20, breed: "Cocker Spaniel", category:Category.dog, genre: .female, photoPath: "peralta.jpg", city:.campinas)
        
        let petList: [Pet] = [pet01, pet02, pet03, pet04, pet05, pet06, pet07, pet08, pet09]
        
        var petsInCitySelected: [Pet] = []
        
        for pet in petList {
            if pet.city == city {
                petsInCitySelected.append(pet)
            }
        }
        
        return petsInCitySelected
    }
}
