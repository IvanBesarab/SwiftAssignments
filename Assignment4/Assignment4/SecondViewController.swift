//
//  SecondViewController.swift
//  Assignment4
//
//  Created by Ivan Pavlenko on 31.08.2021.
//  Copyright © 2021 Ivan Besarab. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    var coffeeMachine: CoffeeMachine!
    
    @IBOutlet weak var ConsoleSecondLabel: UILabel!
    
    @IBAction func addWaterButton() {
        ConsoleSecondLabel.text = coffeeMachine.addWater()
    }
    
    @IBAction func addBeansButton() {
        ConsoleSecondLabel.text = coffeeMachine.addBeans()
    }
    
    @IBAction func addMilkButton() {
        ConsoleSecondLabel.text = coffeeMachine.addMilk()
    }
    
}
