//
//  extentions.swift
//  rideshare
//
//  Created by Ebuka Egbunam on 8/3/21.
//

import Foundation

import UIKit

extension UIViewController {
    
    
    func gotoAuthViewController ( withName vc: String){
        
        print("going to auth")
    }
    
    func gotoRidesViewController(_ currentVC : UIViewController , withName vc: String , makeRoot : Bool){
        let nav = UINavigationController()
        let newVc = UIStoryboard(name: "Rides", bundle: nil).instantiateViewController(identifier: vc) as UIViewController
        nav.viewControllers = [newVc]
            
            UIApplication.shared.windows.first?.rootViewController = nav
            UIApplication.shared.windows.first?.makeKeyAndVisible()
            

       
    }
}
