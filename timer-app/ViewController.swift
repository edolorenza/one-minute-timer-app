//
//  ViewController.swift
//  timer-app
//
//  Created by Edo Lorenza on 06/04/20.
//  Copyright © 2020 Edo Lorenza. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   
    
    var timer = Timer()
    var time : Int = 60
    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var playbutton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @objc func decreaseTime() {
        if time > 0 {
            time -= 1
            timeLabel.text = String(time)
            
        }else {
            timer.invalidate()
        }
    }

    @IBAction func pausePress(_ sender: Any) {
        
        timer.invalidate()
        playbutton.isEnabled = true
    }
    
    @IBAction func playPress(_ sender: Any) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,
                                selector: #selector(decreaseTime),
                                userInfo: nil, repeats: true)
            
        playbutton.isEnabled = false
    }

    @IBAction func minusTenPress(_ sender: Any) {
        
        if time > 10 {
                   time -= 10
               }
               
               timeLabel.text = String(time)
    }
    
    @IBAction func resetButtonPress(_ sender: Any) {
        
        time = 60
        timeLabel.text = String(time)
    }
    
    @IBAction func plusTenPRess(_ sender: Any) {
          time += 10
        timeLabel.text = String(time)
    }
}

