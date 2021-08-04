//
//  SignUp.swift
//  rideshare
//
//  Created by Ebuka Egbunam on 8/3/21.
//

import UIKit



class SignUpViewController : UIViewController {
    
    
    
    override func viewDidLoad() {
        self.view.backgroundColor = .red
    }
    
    @IBAction func back(_ sender: Any) {
        
        self.dismiss(animated: true, completion: nil)
    }
    
    
    @IBAction func signUp(_ sender: Any) {
        self.gotoRidesViewController(self,withName: "ridesvc" , makeRoot: false)
    }
    
}


