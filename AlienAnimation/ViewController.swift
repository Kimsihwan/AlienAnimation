//
//  ViewController.swift
//  AlienAnimation
//
//  Created by D7702_10 on 2018. 4. 5..
//  Copyright © 2018년 ksh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var img: UIImageView!
    @IBOutlet weak var lbl: UILabel!
    var chk = true
    var counter = 1
    var myTimer = Timer()
    var isAnimating = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    lbl.text = String(counter)
    }
    
    @IBAction func start(_ sender: Any) {
        if isAnimating == false {
                    myTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(ViewController.doAniation), userInfo: nil, repeats: true)
            isAnimating = true
        } else {
            myTimer.invalidate()
            isAnimating = false
        }

    }
    
    @objc func doAniation(){
        if counter == 5 {
            chk = false // 내리막
            counter = counter - 1
        } else if counter == 1 {
            chk = true // 오르막
            counter = counter + 1
        } else if chk == false {
            counter = counter - 1
        } else if chk == true {
            counter = counter + 1
        }
        img.image = UIImage(named: "frame\(counter).png")
        lbl.text = String(counter)
    }
    
}

