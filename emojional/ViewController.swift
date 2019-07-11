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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func showMessage(sender: UIButton) {
        // when clicked, pop-up appears in center of screen, from dictionary of recipes for fruit button selected
        
        //stores info about which button user tapped
        let selectedFruit = sender.titleLabel?.text
        
        //makes the alert
        let alertController = UIAlertController(title: "Sauteed Apples", message: fruit[selectedFruit!], preferredStyle: UIAlertController.Style.alert)
        
        //need to give alert an action so that user can tap button to make alert go away
        alertController.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil))
        
        //"present" shows alert
        present(alertController, animated: true, completion: nil)

    }


}

