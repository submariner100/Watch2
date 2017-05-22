//
//  InterfaceController.swift
//  Watch2 WatchKit Extension
//
//  Created by Macbook on 22/05/2017.
//  Copyright © 2017 Chappy-App. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {


     @IBOutlet var question: WKInterfaceImage!
     @IBOutlet var answers: WKInterfaceGroup!
     @IBOutlet var rock: WKInterfaceButton!
     @IBOutlet var paper: WKInterfaceButton!
     @IBOutlet var scissors: WKInterfaceButton!
     @IBOutlet var levelCounter: WKInterfaceLabel!
     @IBOutlet var timer: WKInterfaceTimer!
     
     


    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
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
    
     @IBAction func rockTapped() {
     
     }
     
     @IBAction func paperTapped() {
     
     }
     
     @IBAction func scissorsTapped() {
     
     }
     
     
     
    
    
    
    

}
