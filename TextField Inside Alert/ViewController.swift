//
//  ViewController.swift
//  TextField Inside Alert
//
//  Created by Pawan kumar on 14/05/19.
//  Copyright © 2019 Pawan Kumar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
  
    /*
     
     Editable Text Field inside Alert Controller iOS Tutorial
    
     
     Using the UIAlertController class it is not only possible to show alerts, but also get text input using Text Fields. In this tutorial a username and password is obtained from the user and displayed in the console. This tutorial is made with Xcode 10 and built for iOS 12.
     
     Open Xcode and create a new Single View App.
     
     */

    @IBAction func showAlertController(_ sender: Any) {
        // 1.
        var usernameTextField: UITextField?
        var passwordTextField: UITextField?
        
        // 2.
        let alertController = UIAlertController(
            title: "Log in",
            message: "Please enter your credentials",
            preferredStyle: .alert)
        
        // 3.
        let loginAction = UIAlertAction(
        title: "Log in", style: .default) {
            (action) -> Void in
            
            if let username = usernameTextField?.text {
                print(" Username = \(username)")
            } else {
                print("No Username entered")
            }
            
            if let password = passwordTextField?.text {
                print("Password = \(password)")
            } else {
                print("No password entered")
            }
        }
        
        // 4.
        alertController.addTextField {
            (txtUsername) -> Void in
            usernameTextField = txtUsername
            usernameTextField!.placeholder = "<Your username here>"
        }
        
        alertController.addTextField {
            (txtPassword) -> Void in
            passwordTextField = txtPassword
            passwordTextField?.isSecureTextEntry = true
            passwordTextField?.placeholder = "<Your password here>"
        }
        
        // 5.
        alertController.addAction(loginAction)
        present(alertController, animated: true, completion: nil)
        
    }
    
}

