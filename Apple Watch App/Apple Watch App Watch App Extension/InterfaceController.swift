//
//  InterfaceController.swift
//  Apple Watch App Watch App Extension
//
//  Created by Allen, Corey Nicholas on 10/18/15.
//  Copyright © 2015 Capstone. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {


    @IBAction func btnChange() {
        let rnd = arc4random_uniform(2)
        if rnd == 0 {
            lblHW.setText("Heads")
        }
        else {
            lblHW.setText("Tails")
        }
    }
    
    @IBOutlet var lblHW: WKInterfaceLabel!
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
