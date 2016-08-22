//
//  ViewController.swift
//  Animations_Breakdown
//
//  Created by Diego Aguirre on 8/22/16.
//  Copyright © 2016 home. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // Before creating our Outlets lets create a sublcass of UITextField and conform our textFields to them.
    @IBOutlet weak var emailTextField: CustomTextField!
    @IBOutlet weak var passwordTextField: CustomTextField!
    @IBOutlet weak var confirmPasswordTextField: CustomTextField!
    @IBOutlet weak var dateOfBirthTextField: CustomTextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    var containerWidth: CGFloat {
        return self.view.frame.width
    }
    
    @IBAction func toggleLoginAndSignup(sender: AnyObject) {
        confirmPasswordTextField.toggleVisibility(containerWidth)
        dateOfBirthTextField.toggleVisibility(containerWidth)
    }
    

}

