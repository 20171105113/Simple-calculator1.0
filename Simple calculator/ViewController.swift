//
//  ViewController.swift
//  Simple calculator
//
//  Created by 20171105113 on 2018/9/27.
//  Copyright © 2018年 20171105113. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var temp:Double = 0
    var sum:Double = 0
    var sum2:Double=0
    var sum3:String = ""
    var flag = 0
    var t1:Bool = false
    var isBlack:Bool = false
    var t2:Bool = false
    @IBAction func Change2(_ sender: Any) {
        if(isBlack){
            self.view.backgroundColor = UIColor.white
            isBlack = false
            t1 = true
            t2 = false
            
        }
        else{
            self.view.backgroundColor = UIColor.black
            isBlack = true
            t1 = false
            t2 = true
        }
        if(t2)
        {
            self.sun1.isHidden = true
        }
        else{
            self.sun1.isHidden = false
        }
        if(t1)
        {
            self.moon1.isHidden = true
        }
        else{
            self.moon1.isHidden = false
        }
    }
    @IBOutlet weak var Display: UITextField!
    var isYellow:Bool = false
    @IBAction func Changeb(_ sender: Any) {
        if(isYellow){
            self.view.backgroundColor = UIColor.white
            isYellow = false
        }else{
            self.view.backgroundColor = UIColor.yellow
            isYellow = true
        }
    }
    @IBAction func Buttono(_ sender: Any) {
        Display.text = Display.text!+"."
    }
    @IBAction func Buttontest1(_ sender: Any) {
        Display.text = Display.text!+"0"
    }
    
    @IBAction func Button1(_ sender: Any) {
        Display.text = Display.text!+"1"
    }
    
    @IBAction func Button2(_ sender: Any) {
        Display.text = Display.text!+"2"
    }
    
    @IBAction func Button3(_ sender: Any) {
        Display.text = Display.text!+"3"
    }
    
    @IBAction func Button4(_ sender: Any) {
        Display.text = Display.text!+"4"
    }
    
    @IBAction func Button5(_ sender: Any) {
        Display.text = Display.text!+"5"
    }
    
    @IBAction func Button61(_ sender: Any) {
        Display.text = Display.text!+"6"
    }
    @IBAction func Button7(_ sender: Any) {
        Display.text = Display.text!+"7"
    }
    
    @IBAction func Button8(_ sender: Any) {
        Display.text = Display.text!+"8"
    }
    
    @IBAction func Button9(_ sender: Any) {
        Display.text = Display.text!+"9"
    }
    @IBAction func Button12(_ sender: Any) {
        temp = Double(Display.text!)!
        sum = (sqrt(Double(Display.text!)!))
    }
    
    @IBAction func Buutonadd(_ sender: Any) {
        temp = Double(Display.text!)!
        Display.text = ""
        flag = 1
    }
    
    @IBAction func Buttonreduce(_ sender: Any) {
        temp = Double(Display.text!)!
        Display.text = ""
        flag = 2
    }
    
    @IBAction func Buttonride(_ sender: Any) {
        temp = Double(Display.text!)!
        Display.text = ""
        flag = 3
    }
    
    @IBAction func Buttonexecpt(_ sender: Any) {
        temp = Double(Display.text!)!
        Display.text = ""
        flag = 4
    }
    
    @IBAction func Buttoncalculate(_ sender: Any) {
        if flag == 1{
        sum = temp + Double(Display.text!)!
        }
        else if flag == 2 {
        sum = temp - Double(Display.text!)!
        }
        else if flag == 3{
        sum = temp * Double(Display.text!)!
        }
        else if flag == 4{
        sum = temp / Double(Display.text!)!
        }
        let sum3 = String(format: "%.2f", Double(sum))
        _ = Double(sum3)
        Display.text = "\(sum3)"
    }
    
    @IBAction func Clear(_ sender: Any) {
        Display.text = ""
    }

    @IBOutlet weak var sun1: UILabel!
    @IBOutlet weak var moon1: UILabel!
    
    @IBOutlet weak var pic: UIImageView!
}
