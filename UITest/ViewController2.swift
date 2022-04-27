//
//  ViewController2.swift
//  UITest
//
//  Created by Dambert Louis Munoz Santillana on 27/04/22.
//

import UIKit

class ViewController2: UIViewController {

    @IBOutlet weak var welcomeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupIdentifiers()
    }

    func setupIdentifiers() {
        welcomeLabel.accessibilityIdentifier = "welcomeLabel"
    }
    
}
