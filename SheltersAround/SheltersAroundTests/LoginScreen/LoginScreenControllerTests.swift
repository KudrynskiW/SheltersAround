//
//  LoginScreenControllerTests.swift
//  SheltersAroundTests
//
//  Created by Wojciech Kudrynski on 19/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import Foundation
import XCTest

@testable import SheltersAround
class LoginScreenControllerTests: XCTestCase {
    var sut: LoginScreenController?
    
    override func setUp() {
        sut = LoginScreenController()
        sut?.viewDidLoad()
    }
    
    
    func test_didViewTitleHasBeenLoadedCorreclty_shouldReturnTrue() {
        XCTAssertEqual("Login Screen", sut!.title)
    }


}
