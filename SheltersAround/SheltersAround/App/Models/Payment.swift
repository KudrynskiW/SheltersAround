//
//  Payment.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 15/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import Foundation

struct Payment {
    let id: UUID
    let amount: Double
    let userId: UUID
    let institutionId: UUID
    let animalId: UUID?
    
    init(_ amount: Double,_ userId: UUID,_ institutionId: UUID,_ animalId: UUID? = nil) {
        self.id = UUID.init()
        self.amount = amount
        self.userId = userId
        self.institutionId = institutionId
        self.animalId = animalId
    }
}
