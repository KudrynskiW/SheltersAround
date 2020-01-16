//
//  UserTests.swift
//  SheltersAroundTests
//
//  Created by Wojciech Kudrynski on 16/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import XCTest

@testable import SheltersAround

class UserTests: XCTestCase {
    let dummyEmail: String = "example@mail.com"
    let dummyPassword: String = "password"
    let dummyPhone: String = "000000000"
    let dummyAnimals: [Animal] = [Animal(UUID.init(), nil, "", "", 0, "", nil, ""),
                                  Animal(UUID.init(), nil, "", "", 1, "", nil, "")]
    let dummyPayments: [Payment] = [Payment(10.0, UUID.init(), UUID.init()),
                                    Payment(15.0, UUID.init(), UUID.init())]
    
    var dummyUser = User("", "")
    
    override func setUp() {
        dummyUser = User(dummyEmail, dummyPassword)
        
    }
}
