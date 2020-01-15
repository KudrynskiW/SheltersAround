//
//  PaymentTests.swift
//  SheltersAroundTests
//
//  Created by Wojciech Kudrynski on 15/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import XCTest

@testable import SheltersAround

class PaymentTests: XCTestCase {
    let dummyAmount: Double = 10.0
    let dummyUserId: UUID = UUID.init()
    let dummyInstitutionId: UUID = UUID.init()
    let dummyAnimalId: UUID? = UUID.init()
    

    override class func setUp() {
        let dummyPayment = Payment()
    }
    
    
}
