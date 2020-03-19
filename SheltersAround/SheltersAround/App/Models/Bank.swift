//
//  Bank.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 16/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import Foundation

struct Bank {
    let accountHolderName: String
    let accountHolderAddress: Address
    let accountNumber: String
    
    init(_ accountHolderName: String,_ accountHolderAddress: Address,_ accountNumber: String) {
        self.accountHolderName = accountHolderName
        self.accountHolderAddress = accountHolderAddress
        self.accountNumber = accountNumber
    }
}
