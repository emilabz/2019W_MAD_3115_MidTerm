//
//  Student.swift
//  2019W_MAD_3115_MidTerm
//
//  Created by MacStudent on 2019-03-19.
//  Copyright © 2019 MacStudent. All rights reserved.
//

import Foundation
class Student{
    
    /*Student id, Student name, Gender, Course Name,
    Student email address,Student birthdate, Marks of 5 subjects (User Array to Store marks)
    percentage, totalMarks and grade*/
    
    var studentID:String
    var studentName:String
    var gender:String
    var courseName:String
    var studentEmail:String
    var studentBirthDate:String
    var marks:Array<Double>=[0.0,0.0,0.0,0.0,0.0]
    var percentage:Double=0.0
    var totalMarks:Double=0.0
    var grade:String="Z"
    var count=0


    init(){
        self.studentID=String()
        self.studentName=String()
        self.gender=String()
        self.courseName=String()
        self.studentEmail=String()
        self.studentBirthDate=String()
    }
    init(studentID:String,studentName:String,gender:String,courseName:String,studentEmail:String,studentBirthDate:String,marks:[Double]){
        self.studentID=studentID
        self.studentName=studentName
        self.gender=gender
        self.courseName=courseName
        self.studentEmail=studentEmail
        self.studentBirthDate=studentBirthDate
        self.marks=marks
    }
    func calculate(){
        for i in self.marks{
            if(i<45){
                count += 1
            }
            totalMarks += i
        }
        if count >= 2{
            percentage=0.0
        }
        else{
            percentage = (totalMarks/500)*100
            if percentage >= 95{
                grade="A+"
            }
            else if percentage >= 85 && percentage < 95{
                grade="A"
            }
            else if percentage >= 75 && percentage < 85{
                grade="B+"
            }
            else if percentage >= 65 && percentage < 75{
                grade="B"
            }
            else if percentage >= 55 && percentage < 65{
                grade="C+"
            }
            else if percentage >= 50 && percentage < 55{
                grade="C"
            }
            else if percentage >= 45 && percentage < 50{
                grade="D+"
            }
            else{
                grade="FAIL"
            }
        }
    }
    
}
