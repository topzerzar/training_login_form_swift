//
//  ViewController.swift
//  LoginForm
//
//  Created by Weerapon on 8/12/2560 BE.
//  Copyright © 2560 Weerapon. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var username: UITextField?
    @IBOutlet weak var password: UITextField?
    
    
    let USER = "admin"
    let PASS = "admin"
    
    var titleAlertError = ""
    var messageAlertError = ""
    
    // MARK :- Create event button
    @IBAction func onClickLogin() {
        let statusLogin = self.validate()
        
        if (statusLogin) {
            self.openViewDetial()
        } else {
            self.alertDialog()
        }
    }

    // MARK :- Create View entry this function
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK :- Alert Dialog
    func alertDialog() {
        // create the alert
        let alert = UIAlertController(title: self.titleAlertError, message: self.messageAlertError, preferredStyle: UIAlertControllerStyle.alert)
        
        // add an action (button)
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil))
        
        // show the alert
        self.present(alert, animated: true, completion: nil)
    }
    
    // MARK :- validation
    func validate() -> Bool {
        let usernameText = self.username?.text
        let passwordText = self.password?.text
        
        // check username password empty
        if (usernameText == "" || passwordText == "") {
            self.titleAlertError = "Warning"
            self.messageAlertError = "Please enter username password."
            return false
        } else if (usernameText != USER || passwordText != PASS) {
            self.titleAlertError = "Warning"
            self.messageAlertError = "username or password incorrect please try agian."
            return false
        }
        
        return true
    }
    
    // MARK :- open next view
    func openViewDetial() {
        if let viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController {
            if let navigator = navigationController {
                navigator.pushViewController(viewController, animated: true)
            }
        }
    }

}

