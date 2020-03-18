//
//  AnimalTests.swift
//  SheltersAroundTests
//
//  Created by Wojciech Kudrynski on 15/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import XCTest
import SwiftUI

@testable import SheltersAround

class AnimalTests: XCTestCase {
    let dummyInstitutionId: UUID = UUID.init()
    let dummyPictures: [Image] = [Image("generic-image-placeholder"), Image("generic-image-placeholder")]
    let dummyType: String = "Dog"
    let dummyName: String = "Nero"
    let dummyAge: Int = 12
    let dummySize: String = "XL"
    let dummyMarks: [String] = ["Brown mouth", "Brown eyebrow"]
    let dummyDescription: String = "Beautiful old Labrador, black coat."
    
    var dummyAnimal: Animal = Animal(UUID.init(), nil, "", "", 0, "", nil, "")
    
    override func setUp() {
        dummyAnimal = Animal(dummyInstitutionId, nil, dummyType, dummyName, dummyAge, dummySize, nil, dummyDescription)
    }
    
    func test_didInstitutionIdHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummyInstitutionId, dummyAnimal.institutionId)
    }
    
    func test_didTypeHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummyType, dummyAnimal.type)
    }
    
    func test_didNameHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummyName, dummyAnimal.name)
    }
    
    func test_didAgeHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummyAge, dummyAnimal.age)
    }
    
    func test_didSizeHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummySize, dummyAnimal.size)
    }
    
    func test_didDescriptionHasBeenAssignedCorrectly_shouldReturnTrue() {
        XCTAssertEqual(dummyDescription, dummyAnimal.description)
    }
    
    func test_didPicturesAreEmptyBeforeAssigned_shouldReturnTrue() {
        XCTAssertNil(dummyAnimal.pictures)
    }
    
    func test_didPicturesHasBeenAssignedCorrectly_shouldReturnTrue() {
        dummyAnimal.pictures = dummyPictures
        
        XCTAssertEqual(dummyPictures.count, dummyAnimal.pictures?.count)
        XCTAssertEqual(dummyPictures, dummyAnimal.pictures)
    }
    
    func test_didMarksAreEmptyBeforeAssignedCorrectly_shouldReturnTrue() {
        XCTAssertNil(dummyAnimal.marks)
    }
    
    func test_didMarksHasBeenAssignedCorrectly_shouldReturnTrue() {
        dummyAnimal.marks = dummyMarks
        
        XCTAssertEqual(dummyMarks.count, dummyAnimal.marks?.count)
        XCTAssertEqual(dummyMarks, dummyAnimal.marks)
    }
}
