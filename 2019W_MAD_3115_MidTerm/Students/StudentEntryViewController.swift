//
//  StudentEntryViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class StudentEntryViewController: UIViewController {

    @IBOutlet weak var txtStudID: UITextField!
    @IBOutlet weak var txtStudName: UITextField!
    @IBOutlet weak var txtGender: UITextField!
    @IBOutlet weak var PickerVwCourse: UIPickerView!
    @IBOutlet weak var txtEmail: UITextField!
    @IBOutlet weak var txtBirthDate: UITextField!
    
    @IBOutlet weak var txtMarks1: UITextField!
    @IBOutlet weak var txtMarks2: UITextField!
    @IBOutlet weak var txtMarks3: UITextField!
    @IBOutlet weak var txtMarks4: UITextField!
    @IBOutlet weak var txtMarks5: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func btnSubmitAction(_ sender: UIButton) {
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
