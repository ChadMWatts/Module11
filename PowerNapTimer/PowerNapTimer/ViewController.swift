//
//  ViewController.swift
//  PowerNapTimer
//
//  Created by James Pacheco on 4/12/16.
//  Copyright © 2016 James Pacheco. All rights reserved.
//

import UIKit

class ViewController: UIViewController, TimerDelegate {
    
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var startButton: UIButton!
    
    let timer = Timer()
    
    private let localNotificationTag = "timerNotification"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
        timer.delegate = self
    }
    
    // MARK: View based Methods
    
    func setView() {
        updateTimerLabel()
        // If timer is running, start button title should say "Cancel". If timer is not running, title should say "Start nap"
        if timer.isOn {
            startButton.setTitle("Cancel", forState: .Normal)
        } else {
            startButton.setTitle("Start nap", forState: .Normal)
        }
    }
    
    func updateTimerLabel() {
        timerLabel.text = timer.timeAsString()
    }
    
    // MARK: Action Buttons
    
    @IBAction func startButtonTapped(sender: AnyObject) {
        if timer.isOn {
            timer.stopTimer()
        } else {
            timer.startTimer(20*60.0)
        }
        setView()
    }
    // Mark: timer Delegate Methods
    
    
    func timerSecondTick() {
        updateTimerLabel()
    }
    
    func timerStopped() {
        setView()
    }
    
    func timerCompleted() {
        setView()
        
        var snoozeTextField: UITextField?
        
        let alert = UIAlertController(title: "Wake Up!!!!", message: "Little Boy!", preferredStyle: .Alert)
        alert.addTextFieldWithConfigurationHandler { (textField) -> Void in
            textField.placeholder = " Sleep in a few more minutes... "
            textField.keyboardType = .NumberPad
            snoozeTextField = textField
            
        }
        
        let dismissAction = UIAlertAction(title: "DisMiss", style: .Cancel) { (_) -> Void in
            self.setView()
       
        }
        
        let snoozeAction = UIAlertAction(title: "Snooze", style: .Default) { (_) -> Void in
            guard let timeText = snoozeTextField?.text, time = NSTimeInterval(timeText) else { return }
            self.timer.startTimer(time*60)
            self.setView()
        
        
    }
        
    alert.addAction(dismissAction)
    alert.addAction(snoozeAction)
    presentViewController(alert, animated: true, completion: nil)
        
    }
    
    // MARK - Local Notification Methods
    
    
    func scheduleLocalNotification() {
        
    }
    
    func cancelLocalNotification() {
        
    }
}











