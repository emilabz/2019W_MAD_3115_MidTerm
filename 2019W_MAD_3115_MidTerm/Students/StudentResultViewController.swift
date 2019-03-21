//
//  StudentResultViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class StudentResultViewController: UIViewController {
    var studres=Student()
    @IBOutlet weak var lblStudentID: UILabel!
    @IBOutlet weak var lblStudentName: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    @IBOutlet weak var lblCourseName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblBirthDate: UILabel!
    
    @IBOutlet weak var lblMark1: UILabel!
    @IBOutlet weak var lblMark2: UILabel!
    @IBOutlet weak var lblMark3: UILabel!
    @IBOutlet weak var lblMark4: UILabel!
    @IBOutlet weak var lblMark5: UILabel!
    
    @IBOutlet weak var lblTotalMarks: UILabel!
    @IBOutlet weak var lblPercentage: UILabel!
    @IBOutlet weak var lblGrade: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
