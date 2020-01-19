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
    @IBOutlet weak var registerButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var guestButton: UIButton!
    
    var viewTitle: String? = "Login Screen"

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = viewTitle
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupView()
    }
    
    func setupView() {
        setupTextField(loginTextField)
        setupTextField(passwordTextField)
        
        setupButtonStyle(registerButton)
        setupButtonStyle(loginButton)
        setupButtonStyle(guestButton)
    }
    
    fileprivate func setupButtonStyle(_ button: UIButton) {
        button.layer.cornerRadius = 10
        button.layer.borderWidth = 1
        button.layer.borderColor = button.titleLabel?.textColor.cgColor
    }
    
    fileprivate func setupTextField(_ textField: UITextField) {
        let blueColor = UIColor.systemBlue
        textField.layer.borderColor = blueColor.cgColor
        textField.textColor = blueColor
        textField.layer.borderWidth = 1
        textField.layer.cornerRadius = 5
    }
    
    
}
