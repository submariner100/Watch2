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
     @IBOutlet var result: WKInterfaceLabel!
     
     var allMoves = ["rock", "paper", "scissors"]
     var shouldWin = true
     var level = 1
     


    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
     
          rock.setBackgroundImage(UIImage(named: "rock"))
          paper.setBackgroundImage(UIImage(named: "paper"))
          scissors.setBackgroundImage(UIImage(named: "scissors"))
     
          timer.start()
          newLevel()
    }
    
    func newLevel() {
    
     if level == 21 {
          
          result.setHidden(false)
          question.setHidden(true)
          answers.setHidden(true)
          timer.stop()
          return
     }
     
     levelCounter.setText("\(level)/20")
     
     if arc4random_uniform(2) == 0 {
          
          setTitle("Win!")
          shouldWin = true
          
     } else {
     
          setTitle("Lose!")
          shouldWin = false
          
     }
          allMoves.shuffle()
          question.setImage(UIImage(named: allMoves[0]))
     }
     
     func check(for answer: String) {
          
          if allMoves[0] == answer {
               level += 1
               newLevel()
               
          } else {
               level -= 1
               if level < 1 {level = 1}
               newLevel()
          }
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
     
          if shouldWin {
               
               check(for: "scissors")
               
          } else {
               
               check(for: "paper")
          }
     
     }
     
     @IBAction func paperTapped() {
     
          if shouldWin {
               
               check(for: "rock")
          
          } else {
               
               check(for: "scissors")
          }
          
     
     }
     
     @IBAction func scissorsTapped() {
     
          if shouldWin {
               
               check(for: "paper")
               
          } else {
               
               check(for: "rock")
               
          }
     
     }
     
     
     
    
    
    
    

}
