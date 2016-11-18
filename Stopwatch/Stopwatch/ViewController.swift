//
//  ViewController.swift
//  Stopwatch
//
//  Created by Stanislav Dimitrov on 10/21/15.
//  Copyright © 2015 Stanislav Dimitrov. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var timer: NSTimer = NSTimer()
    var date: NSDate = NSDate()
    var state: StopwatchState = StopwatchState.Stopped
    var lapTimes: NSMutableArray = NSMutableArray()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lapTable.rowHeight = UITableViewAutomaticDimension
        self.lapTable.estimatedRowHeight = 44.0
    }

    // MARK: Outlets
    @IBOutlet weak var timeLabel: UILabel!

    @IBOutlet weak var lapTable: UITableView!
    
    @IBOutlet weak var lapResetButton: LapResetButton!
    
    // MARK: Actions
    @IBAction func startStopButtonPressed(sender: StartStopButton) {
        switch self.state {
        case .Stopped:
            date = NSDate()
            timer = NSTimer.scheduledTimerWithTimeInterval(0.01, target: self, selector: "updateTimer", userInfo: nil, repeats: true)
            sender.setTitle("Stop", forState: .Normal)
            sender.setTitleColor(UIColor.redColor(), forState: .Normal)
            sender.layer.borderColor = UIColor.redColor().CGColor
            self.state = .Running
            lapResetButton.setTitle("Lap", forState: .Normal)
            lapResetButton.enabled = true;
        case .Running: sender.setTitle("Start", forState: .Normal)
        sender.setTitleColor(UIColor.greenColor(), forState: .Normal)
        sender.layer.borderColor = UIColor.greenColor().CGColor
        timer.invalidate()
        self.state = .Stopped
        lapResetButton.setTitle("Reset", forState: .Normal)
            print()
            
            print()
            
            print()
        }
    }
    
    @IBAction func lapButtonPressed(sender: LapResetButton) {
        switch sender.currentTitle! {
        case "Lap": self.lapTimes.addObject(self.timeLabel.text!)
        self.lapTable.reloadData()
        case "Reset":self.lapTimes = NSMutableArray()
            self.lapTable.reloadData()
            sender.setTitle("Lap", forState: .Normal)
        sender.enabled = false;
        default:break
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell: UITableViewCell = self.lapTable.dequeueReusableCellWithIdentifier("lapTime") as UITableViewCell!
        
        cell.textLabel?.text = "Lap \(indexPath.row + 1)"
        cell.textLabel?.tintColor = UIColor.grayColor()
        cell.detailTextLabel?.text = self.lapTimes.objectAtIndex(indexPath.row) as? String
        cell.detailTextLabel?.tintColor = UIColor.blackColor()
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.lapTimes.count
    }
    
    func updateTimer() {
        let elapsed = date.timeIntervalSinceNow * -1
        let minutes = (Int)(elapsed / 60)
        let seconds: Int = (Int)(elapsed % 60)
        let rest: Int = (Int)((elapsed * 100)) % 100
        self.timeLabel.text = String(format: "%02d:%02d.%02d", minutes, seconds, rest)
        self.lapTable.tintColorDidChange()
    }
}