//
//  ViewController.swift
//  emojional
//
//  Created by Apple on 7/11/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let fruit = [
        "🍏" : "green apple",
        "🍎" : "red apple",
        "🍇" : "grapes",
        "🍊" : "orange",
        "🍋" : "lemon",
        "🍒" : "cherries"
    ]
    
    var customMessages = [
        "green apple" : ["sauteed apples", "fried green apples", "green apple crisp"],
        "red apple" : ["cinnamon apple crumble", "apple pie", "mini spiced apple tarts"],
        "grapes" : ["roasted grape crostini", "orange-drizzled grape tartlets", "cheese-grape appetizers"],
        "orange" : ["orange cheesecake breakfast rolls", "orange spritz cookies", "orange ricotta pancakes"],
        "lemon" : ["lemon-date bars", "lemon gateau", "lemon meringue pie"],
        "cherries" : ["cherry and chocolate ice cream pie", "spiced cherry chutney", "cherry slurpee"]
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        // when clicked, pop-up appears in center of screen, from dictionary of recipes for fruit button selected
        
        //stores info about which button user tapped
        let selectedFruit = sender.titleLabel?.text
        
        //random number system
        let number = Int.random(in: 0 ..< 3)
        
        let fruitMessage = customMessages[fruit[selectedFruit!]!]?[number]
        
        //makes the alert
        let alertController = UIAlertController(title: "Sauteed Apples", message: fruitMessage, preferredStyle: UIAlertController.Style.alert)
        
        //need to give alert an action so that user can tap button to make alert go away
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        //"present" shows alert
        present(alertController, animated: true, completion: nil)

    }


}

