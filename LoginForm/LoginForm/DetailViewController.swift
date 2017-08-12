//
//  PageTwoViewController.swift
//  LoginForm
//
//  Created by Weerapon on 8/12/2560 BE.
//  Copyright © 2560 Weerapon. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var textDetail: UILabel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.initialInstance()
    }
    
    func initialInstance() {
        self.textDetail?.text = "Welcome to page 2"
    }
}
