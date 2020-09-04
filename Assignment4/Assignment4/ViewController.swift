//
//  ViewController.swift
//  Assignment4
//
//  Created by Ivan Besarab on 9/2/20.
//  Copyright © 2020 Ivan Besarab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let myCoffeeMachine = CoffeeMachine.init(beansInNew: 0, waterInNew: 0, milkInNew: 0)
    
    @IBOutlet weak var label: UILabel!
    
    @IBAction func addWater(_ sender: Any) {
        label.text = myCoffeeMachine.addWater()
    }
    @IBAction func addBeans(_ sender: Any) {
        label.text = myCoffeeMachine.addBeans()
    }
    @IBAction func addMilk(_ sender: Any) {
        label.text = myCoffeeMachine.addMilk()
    }
    @IBAction func makeEspresso(_ sender: Any) {
        label.text = myCoffeeMachine.makeEspresso()
    }
    @IBAction func makeAmericano(_ sender: Any) {
        label.text = myCoffeeMachine.makeAmericano()
    }
    @IBAction func makeCappucino(_ sender: Any) {
        label.text = myCoffeeMachine.makeCapuccino()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
}

