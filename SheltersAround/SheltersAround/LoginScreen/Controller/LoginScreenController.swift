//
//  LoginScreenController.swift
//  SheltersAround
//
//  Created by Wojciech Kudrynski on 15/01/2020.
//  Copyright © 2020 Wojciech Kudrynski. All rights reserved.
//

import Foundation
import UIKit

class LoginScreenController: UIViewController {
    @IBOutlet weak var logoImage: UIImageView!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var registerButton: BeautifulButton!
    @IBOutlet weak var loginButton: BeautifulButton!
    @IBOutlet weak var guestButton: BeautifulButton!
    
    var viewTitle: String? = "LOGIN"

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = viewTitle
        
        registerButton.configure()
        loginButton.configure()
        guestButton.configure()
    }
}
