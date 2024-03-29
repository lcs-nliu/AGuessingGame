//
//  ViewController.swift
//  AGuessingGame
//
//  Created by Liu, Bojun on 2019-10-02.
//  Copyright © 2019 Liu, Nicole. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {

    // MARK: Properties - to store information
     let targetNumber = Int.random(in: 1...100)
    @IBOutlet weak var submittedGuess: UITextField!
    
    // MARK: Initializers - gets a class ready to be used
    
    
    
    // MARK: Methods (functions) - behaviours
    
    
    // Runs as soon as the view becomes visible to the user
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        speak(this: "I'm thinking of a number between 1 and 100. Guess what it is.")
        
        // Show what the target number is
        print ("For testing purposes, the target is \(targetNumber)")
    }
    
    // Will be used to check a guess
    @IBAction func checkGuess(_ sender: Any) {
    
        // Obtain the guess value from the text field
        let guessText = submittedGuess.text!
        let guessNumber = Int(guessText)!
        
        // For testing purposes, what was the guess?
        print ("For testing purposes, the guess made was \(guessNumber)")
   
        // Give the appropriate feedback to the user
        if guessNumber > targetNumber {
          
            speak(this: "Guess lower next time" )
            
            
        } else if guessNumber < targetNumber {

            speak(this: "Guess higher next time.")
            
            
        } else {
            
            speak(this: "You are correct!")
            
            
        }
    
    }


    func speak(this message: String) {
       
        // Make an object named 'synthesizer', which is an instance of the
        // class 'AVSpeechSynthesizer'
        let synthesizer = AVSpeechSynthesizer()
        

        // Make an object named 'utterance', which is an instance of the class
        // AVSpeechUtterance
        let utterance = AVSpeechUtterance(string: message)
        
        
        //Speak the message
        synthesizer.speak(utterance)
        
        // Print message
        print(message)
 
    }
    
}
