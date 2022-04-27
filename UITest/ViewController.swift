//
//  ViewController.swift
//  UITest
//
//  Created by Dambert Louis Munoz Santillana on 1/02/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var messageLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupIdentifiers()
    }

    func setupIdentifiers() {
        usernameTextField.accessibilityIdentifier = "usernameID"
        passwordTextField.accessibilityIdentifier = "passwordID"
        messageLabel.accessibilityIdentifier = "messageID"
    }

    @IBAction func loginTap(_ sender: Any) {
        print("Hola loginTap")
    }
    
}

