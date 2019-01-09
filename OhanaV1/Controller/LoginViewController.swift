//
//  LoginViewController.swift
//  OhanaV1
//
//  Created by Chifeng Law on 1/8/19.
//  Copyright © 2019 Chifeng Law. All rights reserved.
//

import UIKit
import FacebookLogin

class LoginViewController: UIViewController {

    @IBOutlet weak var logoImageView: UIImageView!
    @IBOutlet weak var joinLabel: UILabel!
    
    @IBAction func emailLoginButton(_ sender: UIButton) {
   
    }
    @IBAction func facebookLoginButton(_ sender: UIButton) {
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        joinLabel.text = "Join to unlock the full experience"
        // Do any additional setup after loading the view.
    }
    

}
