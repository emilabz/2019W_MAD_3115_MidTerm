//
//  StudentEntryViewController.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import UIKit

class StudentEntryViewController: UIViewController,UIPickerViewDelegate, UIPickerViewDataSource {
    var courseList:[String]!
    var courseName:String=""
    var subMarks=[0.0,0.0,0.0,0.0,0.0]
    //var bDate=Date()
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
        self.PickerVwCourse.delegate=self
        self.PickerVwCourse.dataSource=self
        setCourseData()
        // Do any additional setup after loading the view.
        
    }
    
    func setCourseData(){
        courseList=[]
        courseList.append("MADT")
        courseList.append("MODT")
        courseList.append("CSD")
        courseList.append("WADT")
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return courseList.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return courseList[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        courseName=courseList[row]
    }
    
    @IBAction func btnSubmitAction(_ sender: UIButton) {
        subMarks[0]=Double(txtMarks1.text!)!
        subMarks[1]=Double(txtMarks2.text!)!
        subMarks[2]=Double(txtMarks3.text!)!
        subMarks[3]=Double(txtMarks4.text!)!
        subMarks[4]=Double(txtMarks5.text!)!
        var stud=Student(studentID: txtStudID.text!, studentName: txtStudName.text!, gender: txtGender.text!, courseName: courseName, studentEmail: txtEmail.text!, studentBirthDate: txtBirthDate.text!, marks: subMarks)
        stud.calculate()
        let sb=UIStoryboard(name: "Main", bundle: nil)
        let studresVC=sb.instantiateViewController(withIdentifier: "StudResVC") as! StudentResultViewController
        studresVC.studres=stud
        self.present(studresVC, animated: true)
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
