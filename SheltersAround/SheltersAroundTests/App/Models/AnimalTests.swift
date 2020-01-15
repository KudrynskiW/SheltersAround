//
//  AnimalTests.swift
//  SheltersAroundTests
//
//  Created by Wojciech Kudrynski on 15/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import XCTest
import UIKit
@testable import SheltersAround

class AnimalTests: XCTestCase {
    let dummyInstitutionId: UUID = UUID.init()
    let dummyPictures: [UIImage] = [UIImage(), UIImage()]
    let dummyType: String = "Dog"
    let dummyName: String = "Nero"
    let dummyAge: Int = 12
    let dummySize: String = "XL"
    let dummyMarks: [String] = ["Brown mouth", "Brown eyebrow"]
    let dummyDescription: String = "Beautiful old Labrador, black coat."
    
    var dummyAnimal: Animal = Animal(UUID.init(), [], "", "", 0, "", [], "")
    
    
    override func setUp() {
        dummyAnimal = Animal(dummyInstitutionId, dummyPictures, dummyType, dummyName, dummyAge, dummySize, dummyMarks, dummyDescription)
    }
}
