//
//  BeautifulButton.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 22/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import UIKit

class BeautifulButton: UIButton {
    
    func configure() {
        layer.cornerRadius = 10
        layer.borderWidth = 1
        layer.borderColor = titleLabel?.textColor.cgColor
    }

}
