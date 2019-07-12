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
    
    //dictionary of titles
    var customTitles = [
        "green apple" : ["Sauteed Apples", "Fried Green Apples", "Green Apple Crisp"],
        "red apple" : ["Cinnamon Apple Crumble", "Apple Pie", "Mini Spiced Apple Tarts"],
        "grapes" : ["Roasted Grape Crostini", "Orange-Drizzled Grape Tartlets", "Cheese-Grape Appetizers"],
        "orange" : ["Orange Cheesecake Breakfast Rolls", "Orange Spritz Cookies", "Orange Ricotta Pancakes"],
        "lemon" : ["Lemon-Date Bars", "Lemon Gateau", "Lemon Meringue Pie"],
        "cherries" : ["Cherry and Chocolate Ice Cream Pie", "Spiced Cherry Chutney", "Cherry Slurpee"]
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
        
        let fruitTitle = customTitles[fruit[selectedFruit!]!]?[number]
        
        
        
        //makes the alert
        let alertController = UIAlertController(title: fruitTitle, message: "Insert recipe here", preferredStyle: UIAlertController.Style.alert)
        
        //need to give alert an action so that user can tap button to make alert go away
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        //"present" shows alert
        present(alertController, animated: true, completion: nil)

    }


}

