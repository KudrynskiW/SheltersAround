//
//  Animal.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 15/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import Foundation
import UIKit

struct Animal {
    let id: UUID
    let institutionId: UUID
    var pictures: [UIImage]?
    let type: String
    let name: String
    let age: Int
    let size: String
    var marks: [String]?
    var description: String
    
    init(_ institutionId: UUID,_ pictures: [UIImage]? = nil,_ type: String,_ name: String,
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
