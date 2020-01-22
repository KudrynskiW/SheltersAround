//
//  BankTests.swift
//  SheltersAroundTests
//
//  Created by Wojciech Kudrynski on 16/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import XCTest

@testable import SheltersAround
class BankTests: XCTestCase {
    let dummyAccountHolderName: String = "Example Name"
    let dummyAccountHolderAddress: Address = Address("Street", "1a", "City", "00-123", "Country")
    let dummyAccountNumber: String = "12 0000 1111 2222 4444 3333"
    
    var dummyBank: Bank = Bank("", Address("", "", "", "", ""), "")
    
    override func setUp() {
        dummyBank = Bank(dummyAccountHolderName, dummyAccountHolderAddress, dummyAccountNumber)
    }
    
    func test_didAccountHolderNameHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummyAccountHolderName, dummyBank.accountHolderName)
    }
    
    func test_didAccountHolderAddressHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummyAccountHolderAddress, dummyBank.accountHolderAddress)
    }
    
    func test_didAccountNumberHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummyAccountNumber, dummyBank.accountNumber)
    }
}
