//
//  ViewController.swift
//  coldcall
//
//  Created by havisha tiruvuri on 9/7/17.
//  Copyright © 2017 havisha tiruvuri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var coldcallbutton: UIButton!
    @IBOutlet weak var coldcallLabel: UILabel!
    
    var coldword = [
    "Jay","Bryant","Cody","Jimmy"
    ]
    var currentcoldword = 0
    
//    var number = [
//        ("1"),("2"),("3"),("4"),("5")
//    ]
//    var currentnumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        updateUI()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func updateUI(){
        coldcallLabel.text = coldword[currentcoldword]
       
        
    }
    
//    func shuffle(){
//        for _ in 0...10 {
//            let random = Int(arc4random_uniform(UInt32(coldword.count)))
//            let random2 = Int(arc4random_uniform(UInt32(coldword.count)))
//            if random != random2 {
//                swap(&coldword[random], &coldword[random2])
//            }
//        }
//

    
    @IBAction func coldcallbutton(_ sender: UIButton) {
        if currentcoldword != coldword.count - 1 {
            currentcoldword = Int(arc4random_uniform(UInt32(coldword.count)))
        }else{
            currentcoldword = 0
        }
        
        let number = Int(arc4random_uniform(5) + 1)
        let show_number = String(number)
        numberLabel.text = show_number
        
        if number <= 2{
            numberLabel.textColor = UIColor.red
        }else if number == 5{
            numberLabel.textColor = UIColor.green
        }else {
            numberLabel.textColor = UIColor.orange
        }
        
//
        updateUI()
//        shuffle()
        
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

