//
//  ViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var txtUserName: UITextField!
    @IBOutlet weak var txtPass: UITextField!
    @IBOutlet weak var swRememberMe: UISwitch!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let userDefault=UserDefaults.standard
        if let uname=userDefault.string(forKey: "userName")
        {
            txtUserName.text=uname
        }
        if let passw=userDefault.string(forKey: "password"){
            txtPass.text=passw
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnLoginAction(_ sender: UIButton) {
        let userName=txtUserName.text
        let pass=txtPass.text
        if userName == "admin" && pass == "admin@123"{
        var userDefault = UserDefaults.standard
            print("Login successful")
            if(swRememberMe.isOn == true){
                userDefault.set(userName, forKey: "userName")
                userDefault.set(pass, forKey: "password")
            }
            let sb=UIStoryboard(name: "Main", bundle: nil)
            let studVC=sb.instantiateViewController(withIdentifier: "StudVC") as! StudentEntryViewController
            navigationController?.pushViewController(studVC, animated: true)
        }
        else{
            print("Alert")
            let alert=UIAlertController(title: "Invalid username/password", message: "Please enter a valid username & password", preferredStyle: .alert)
            
            let ok = UIAlertAction(title: "OK", style: .default)
            alert.addAction(ok)
            self.present(alert, animated: true)
        }
    }
    
}

