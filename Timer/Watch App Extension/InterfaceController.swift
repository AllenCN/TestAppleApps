//
//  InterfaceController.swift
//  Watch App Extension
//
//  Created by Allen, Corey Nicholas on 10/19/15.
//  Copyright © 2015 Capstone. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var tmr: WKInterfaceTimer!
    var secs:Int = 0
    var isStopped:Bool = true
    
    @IBAction func sldrSetter(value: Float) {
        secs = Int(ceil(value)) * 60
    }
    
    
    @IBAction func startBtn() {
        let interval:NSTimeInterval = Double(secs)
        tmr.setDate(NSDate(timeIntervalSinceNow: interval))
        tmr.start()
        isStopped = false
    }
    
    @IBAction func stopBtn() {
        if !isStopped {
            tmr.stop()
            isStopped = true
        }
        else {
            let interval:NSTimeInterval = Double(secs)
            tmr.setDate(NSDate(timeIntervalSinceNow: interval))
            tmr.start()
            tmr.stop()
        }
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
