//
//  ViewController.swift
//  sample-jenkin-setup
//
//  Created by Roja Mule on 25/06/18.
//  Copyright © 2018 Roja Mule. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var usernameField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    let validUsername = "admin"
    let validPassword = "password"
    
    enum LoginError {
        case invalidUsername
        case invalidPassword
        case none
        
        var description: String {
            switch self {
            case .invalidUsername:
                return "User name is invalid"
            case .invalidPassword:
                return "Password is invalid"
            case .none:
                return "Successful"
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loginTapped(_ sender: Any) {
        let loginError: LoginError
        if usernameField.text != validUsername {
            loginError = .invalidUsername
        } else if passwordField.text != validPassword {
            loginError = .invalidPassword
        } else {
            loginError = .none
        }
        showMessage(title: "invalid", message: loginError.description)
    }
    
    private func showMessage(title: String, message: String) {
        let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        ac.addAction(okAction)
    }
}

