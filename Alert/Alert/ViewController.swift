//
//  ViewController.swift
//  Alert
//
//  Created by Chad Watts on 5/17/16.
//  Copyright © 2016 Chad Watts. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    let alertController = UIAlertController(title: "Alert!", message: "This is an alert!", preferredStyle: .Alert)
    
    let destructiveAction = UIAlertAction(title: "Warning!", style: .Destructive) { alert -> Void in
        print("Something blew Up!")
    }
    
    let defaultAction = UIAlertAction(title: "Cancel", style: .Cancel) { alert -> Void in
        print("Boring")
    }
    
    let okAction = UIAlertAction(title: "Ok", style: .Default) { alert -> Void in
        print("Okey Dokey.")
    }
    
    alertController.addAction(destructiveAction)
    alertController.addAction(defaultAction)
    alertController.addAction(okAction)
    
    
    {
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

