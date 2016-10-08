//
//  ViewController.swift
//  Egg Timer
//
//  Created by Ronald Morgan on 10/7/16.
//  Copyright © 2016 Ronald Morgan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timerLabel: UILabel!
    
    var timer = Timer()
    
    var time = 210


    func decreaseTimer(){
        
        if time > 0 {
        time -= 1
        timerLabel.text = String(time)
        }else{
        timer.invalidate()
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func playTimer(_ sender: AnyObject) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }

    @IBAction func pauseTimer(_ sender: AnyObject) {
        timer.invalidate()
    }
  
    @IBAction func minusTen(_ sender: AnyObject) {
        if time > 10{
        time -= 10
        timerLabel.text = String(time)
        }
    }
    
    @IBAction func plusTen(_ sender: AnyObject) {
        time += 10
    }
    
    @IBAction func reset(_ sender: AnyObject) {
        time = 210
        timerLabel.text = String(time)
    }
}

