//
//  ViewController.swift
//  Stopwatch
//
//  Created by Stanislav Dimitrov on 10/21/15.
//  Copyright © 2015 Stanislav Dimitrov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer: NSTimer = NSTimer()
    var date: NSDate = NSDate()
    var state: StopwatchState = StopwatchState.Stopped
    //var button = RoundButton
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Outlets
    @IBOutlet weak var timeLabel: UILabel!
    
    // MARK: Actions
    @IBAction func startStopButtonPressed(sender: UIButton) {
        switch self.state {
        case .Stopped:
            date = NSDate()
            timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: "updateTimer", userInfo: nil, repeats: true)
            sender.setTitle("Stop", forState: .Normal)
            sender.setTitleColor(UIColor.redColor(), forState: .Normal)
            sender.layer.borderColor = UIColor.redColor().CGColor
            self.state = .Running
        case .Running: sender.setTitle("Start", forState: .Normal)
        sender.setTitleColor(UIColor.greenColor(), forState: .Normal)
        sender.layer.borderColor = UIColor.greenColor().CGColor
        timer.invalidate()
        self.state = .Stopped
        }
        
}
    
    @IBAction func lapButtonPressed() {
        
    }
    
    
    func updateTimer() {
        let elapsed = date.timeIntervalSinceNow * -1
        let minutes = (Int)(elapsed / 60)
        let seconds: Int = (Int)(elapsed % 60)
        let rest: Int = (Int)((elapsed * 100)) % 100
        self.timeLabel.text = String(format: "%02d:%02d:%02d", minutes,seconds,rest)
        
    }
}