//
//  ViewController.swift
//  Assignment4
//
//  Created by Ivan Besarab on 9/2/20.
//  Copyright © 2020 Ivan Besarab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var screen: UILabel!
    
    @IBAction func water(_ sender: Any) {
        screen.text = myCoffeMachine.addWater()
    }
    
    
    @IBAction func milk(_ sender: Any) {
        screen.text = myCoffeMachine.addBeans()
    }
    
    @IBAction func beans(_ sender: Any) {
        screen.text = myCoffeMachine.addMilk()
    }
    
    
    @IBAction func americano(_ sender: Any) {
        screen.text = myCoffeMachine.makeAmericano()
    }
    
    @IBAction func espresso(_ sender: Any) {
        screen.text = myCoffeMachine.makeEspresso()

    }
    
    @IBAction func cappuccino(_ sender: Any) {
        screen.text = myCoffeMachine.makeCapuccino()

    }
    
    
}
