//
//  ViewController.swift
//  StopWatch
//
//  Created by kelvinfok on 12/7/16.
//  Copyright © 2016 kelvinfok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var timer = NSTimer()
    var counter = 0
    
    @IBOutlet weak var timerLabel: UILabel!
    
    func startTimer() {
        counter += 1
        timerLabel.text = "\(counter)"
    }

    
    @IBAction func playButton(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: #selector(ViewController.startTimer), userInfo: nil, repeats: true)
    }
    
    
    @IBAction func pauseButton(sender: AnyObject) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

