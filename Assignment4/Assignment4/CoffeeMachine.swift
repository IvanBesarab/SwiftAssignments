//
//  CoffeeMachine.swift
//  Assignment4
//
//  Created by Ivan Pavlenko on 20.08.2021.
//  Copyright © 2021 Ivan Besarab. All rights reserved.
//

import Foundation

class CoffeeMachine {
    private struct Constants {
        static let formulaAmericano = ["water": 500, "beans": 10]
        static let formulaCappuccino = ["water": 60, "beans": 10, "milk": 60]
    }
    private let priority = ["water", "beans", "milk"]
    private let drinks = ["americano", "cappuccino"]
    private var inCoffeeMachine = ["water": 0, "beans": 0, "milk": 0]
    private let drinksFormula = [Constants.formulaAmericano, Constants.formulaCappuccino]
    
    func makeAmericano() -> String {
        return doDrink(Constants.formulaAmericano)
    }
    
    func makeCapuccino() -> String {
        return doDrink(Constants.formulaCappuccino)
    }
    
    private func iterateInMachine(_ formula: Dictionary<String,Int>) -> String {
        for position in 0..<formula.count {
            if checkIngredient(inCoffeeMachine[(priority[position])]!, formula[(priority[position])]!) {}
            else {
                return "not enough \(priority[position])"
            }
        }
        return "isOK"
    }
    
    private func doDrink(_ formula: Dictionary<String,Int>) -> String {
        let test = iterateInMachine(formula)
        if test == "isOK" {
            for position in 0..<formula.count {
                inCoffeeMachine[(priority[position])]! -= formula[(priority[position])]!
            }
            return "your \(drinks[(drinksFormula.firstIndex(of: formula)!)]) sir"
        }
        return test
    }
    
    private func checkIngredient(_ inMachine: Int, _ needForCup: Int) -> Bool {
        if inMachine >= needForCup {
            return true
        }
        else {
            return false
        }
    }
    
    func addWater() -> String {
        inCoffeeMachine["water"]! += 1000
        return "water in tank \(inCoffeeMachine["water"]!)"
    }
    
    func addBeans() -> String  {
        inCoffeeMachine["beans"]! += 100
        return "beans in tank \(inCoffeeMachine["beans"]!)"
    }
    
    func addMilk() -> String  {
        inCoffeeMachine["milk"]! += 200
        return "milk in tank \(inCoffeeMachine["milk"]!)"
    }
    
}
