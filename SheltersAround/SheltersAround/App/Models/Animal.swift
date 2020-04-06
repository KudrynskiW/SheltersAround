//
//  Animal.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 15/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import Foundation
import UIKit
import SwiftUI

struct Animal: Equatable, Identifiable {
    let id: UUID
    let institutionId: UUID
    var pictures: [Image]?
    let type: String
    let name: String
    let age: Int
    let size: String
    var marks: [String]?
    var description: String
    
    init(_ institutionId: UUID,_ pictures: [Image]? = nil,_ type: String,_ name: String,
         _ age: Int,_ size: String,_ marks: [String]? = nil,_ description: String) {
        self.id = UUID.init()
        self.institutionId = institutionId
        self.pictures = pictures
        self.type = type
        self.name = name
        self.age = age
        self.size = size
        self.marks = marks
        self.description = description
    }
}

let exampleAnimal1 = Animal(UUID.init(), [Image("generic-image-placeholder"), Image("generic-image-placeholder")], "Dog", "Nero", 12, "XL", ["Brown eyebrows", "brown legs"], "Cutties dog you had ever seen. I've made this app to tribute to his life and serve.")

let exampleAnimal2 = Animal(UUID.init(), [Image("generic-image-placeholder"), Image("generic-image-placeholder")], "Cat", "Kicia", 12, "M", ["Tricolor", "long hair"], "Missing sweet cat, always near one she loved. I've made this app to tribute to her life and serve. Missing sweet cat, always near one she loved. I've made this app to tribute to her life and serve.")

let exampleAnimal3 = Animal(UUID.init(), [Image("generic-image-placeholder")], "Dog", "Nero", 12, "XL", ["Brown eyebrows", "brown legs"], "Cutties dog you had ever seen. I've made this app to tribute to his life and serve.")

let exampleAnimalArray = [exampleAnimal1, exampleAnimal2, exampleAnimal3, exampleAnimal1, exampleAnimal2, exampleAnimal3]
