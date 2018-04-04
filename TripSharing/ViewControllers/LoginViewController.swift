//
//  LoginViewController.swift
//  TripSharing
//
//  Created by nhatlee on 4/4/18.
//  Copyright © 2018 nhatlee. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtPassword: UITextField!
    @IBOutlet weak var btnLogin: UIButton!
    
    var viewModel = LoginViewModel()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        txtConfirm.addRightButtonOnKeyboardWithText("Login", target: self, action: #selector(loginTap(_:)))
        // Do any additional setup after loading the view.
    }

    @IBAction func loginTap(_ sender: Any) {
        self.viewModel.login(with: txtEmail.text.valueOrEmpty(), password: txtPassword.text.valueOrEmpty()) { (user) in
            print(user)
        }
    }
    
    
    @IBAction func useTouchIdTap(_ sender: Any) {
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //MARK:UITextFieldDelegate
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == txtEmail {
            txtPassword.becomeFirstResponder()
        } else if textField == txtPassword {
            txtConfirm.becomeFirstResponder()
        }
        return true
    }
}

