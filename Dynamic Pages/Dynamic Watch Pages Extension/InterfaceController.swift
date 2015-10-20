//
//  InterfaceController.swift
//  Dynamic Watch Pages Extension
//
//  Created by Allen, Corey Nicholas on 10/20/15.
//  Copyright © 2015 Capstone. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        //Should create five pages...?
        let objects  = ["Red", "Blue", "Yellow", "Seafoam"]
        let controllers = Array(count: objects.count, repeatedValue: "Page")
        presentControllerWithNames(objects, contexts: controllers)
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
