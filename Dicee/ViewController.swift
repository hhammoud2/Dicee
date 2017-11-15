//
//  ViewController.swift
//  Dicee
//
//  Created by Hammoud Hammoud on 11/13/17.
//  Copyright © 2017 Hammoud Hammoud. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImage1: UIImageView!
    @IBOutlet weak var diceImage2: UIImageView!
    
    var randomDice1 : Int = 0
    var randomDice2 : Int = 0
    
    var diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateDice()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func updateDice() {
        randomDice1 = Int(arc4random_uniform(6))
        randomDice2 = Int(arc4random_uniform(6))
        
        diceImage1.image = UIImage(named: diceArray[randomDice1])
        diceImage2.image = UIImage(named: diceArray[randomDice2])
        
    }
    @IBAction func rollButtonPress(_ sender: UIButton) {
        updateDice()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDice()
    }
    
}

