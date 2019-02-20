//
//  ViewController.swift
//  TestApp
//
//  Created by Martin Kurbel on 14/02/2019.
//  Copyright © 2019 Martin Kurbel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let buttonsView = ButtonsView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    private func setupViews() {
        
        buttonsView.frame = CGRect(x: 0, y: self.view.frame.height - 136, width: self.view.frame.width, height: 36)
        self.view.addSubview(buttonsView)
        
        buttonsView.loginAction = {
            print("Login")
        }
        
        buttonsView.registerAction = {
            print("Register")
        }
    }
}
