//
//  ButtonsView.swift
//  TestApp
//
//  Created by Martin Kurbel on 14/02/2019.
//  Copyright © 2019 Martin Kurbel. All rights reserved.
//

import UIKit

class ButtonsView: UIView {
    
    let loginButton = UIButton()
    let registerButton = UIButton()
    
    var loginAction: (() -> Void)?
    var registerAction: (() -> Void)?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialize()
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initialize() {
        
        loginButton.setTitle("Log in", for: .normal)
        registerButton.setTitle("Register", for: .normal)
        loginButton.backgroundColor = .orange
        registerButton.backgroundColor = .blue
        
            loginButton.addTarget(self, action: #selector(loginTap), for: .touchUpInside)
            registerButton.addTarget(self, action: #selector(registerTap), for: .touchUpInside)
        
        self.addSubview(loginButton)
        self.addSubview(registerButton)
    }
    
    override func layoutSubviews() {
        
        loginButton.frame = CGRect(x: 8, y: 0, width: self.bounds.width/2 - 16, height: self.bounds.height)
        
        registerButton.frame = CGRect(x: loginButton.bounds.width + 24, y: 0, width: self.bounds.width/2 - 16, height: self.bounds.height)
    }
    
    @objc func loginTap() {
        self.loginAction?()
    }
    
    @objc func registerTap() {
        self.registerAction?()
    }
    
}
