//
//  ViewController.swift
//  Assignment4
//
//  Created by Ivan Besarab on 9/2/20.
//  Copyright © 2020 Ivan Besarab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = "Coffee Machine 13"
    }
    
    let coffeeMachine13 = CoffeeMachine()
      
    @IBOutlet weak var consoleLabel: UILabel!
    
    @IBOutlet weak var boardAmericano: UIButton!
    
    @IBAction func buttonAmericano() {
        consoleLabel.text = coffeeMachine13.makeAmericano()
    }
    @IBAction func buttonCappuccino() {
        consoleLabel.text = coffeeMachine13.makeCapuccino()
    }
    
    @IBAction func addIngredient(_ sender: Any) {}
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let secondVC = segue.destination as? SecondViewController {
            secondVC.coffeeMachine = coffeeMachine13
        }
    }
    
}
 
