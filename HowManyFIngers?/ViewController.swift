//
//  ViewController.swift
//  HowManyFIngers?
//
//  Created by Patrick Landin on 11/28/14.
//  Copyright (c) 2014 Patrick Landin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guess: UITextField!
    @IBOutlet weak var message: UILabel!
    
    @IBAction func guessButton(sender: AnyObject) {
        
        var numberOfFingers = arc4random() % 6
        println(numberOfFingers)
        
        var numberOfFingersString = String(numberOfFingers)
        
        if (numberOfFingersString == guess.text) {
            
            message.text = "You got it right!"
        } else {
            message.text = "You are wrong. It was \(numberOfFingers). Try again!"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

