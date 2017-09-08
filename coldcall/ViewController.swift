//
//  ViewController.swift
//  coldcall
//
//  Created by havisha tiruvuri on 9/7/17.
//  Copyright © 2017 havisha tiruvuri. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var coldcallbutton: UIButton!
    @IBOutlet weak var coldcallLabel: UILabel!
    
    var coldword = [
    "Jay","Bryant","Cody","Jimmy"
    ]
    var currentcoldword = 0
    
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
//    }
    
    @IBAction func coldcallbutton(_ sender: UIButton) {
        if currentcoldword != coldword.count - 1 {
            currentcoldword = Int(arc4random_uniform(UInt32(coldword.count)))
        }else{
            currentcoldword = 0
        }
        
        updateUI()
//        shuffle()
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

