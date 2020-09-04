//
//  CoffeeMachine.swift
//  Assignment4
//
//  Created by Viktor Kyrychenko on 04.09.2020.
//  Copyright © 2020 Ivan Besarab. All rights reserved.
//

import Foundation

class CoffeeMachine {
    var beans : Int
    var water : Int
    var milk : Int
    
    init(beansInNew: Int, waterInNew: Int, milkInNew: Int) {
        beans = beansInNew
        water = waterInNew
        milk = milkInNew
    }
    
    func addBeans () -> String {
        beans += 100
        let addBeans = "beans in tank \(beans)"
        return addBeans
    }
    func addWater () -> String {
        water += 1000
        let addWater = "water in tank \(water)"
        return addWater
    }
    func addMilk () -> String {
        milk += 200
        let addMilk = "milk in tank \(milk)"
        return addMilk
    }
    func makeEspresso () -> String {
        if water < 30 {
            let noWaterForEspresso = "not enough water"
            return noWaterForEspresso
        }
        if beans < 10 {
            let noBeansForEspresso = "not enough beans"
            return noBeansForEspresso
        }
        else {
            beans -= 10
            water -= 30
            let makeEspresso = "your espresso sir"
            return makeEspresso
        }
    }
    func makeAmericano () -> String {
        if water < 500 {
            let noWaterForAmericano = "not enough water"
            return noWaterForAmericano
        }
        if beans < 10 {
            let noBeansForAmericano = "not enough beans"
            return noBeansForAmericano
        }
        else {
            beans -= 10
            water -= 500
            let makeAmericano = "your americano sir"
            return makeAmericano
        }
    }
    func makeCapuccino () -> String{
        if beans < 10 {
            let noBeansForCapuccino = "not enough beans"
            return noBeansForCapuccino
        }
        if water < 60 {
            let noWaterForCapuccino = "not enough water"
            return noWaterForCapuccino
        }
        if milk < 60 {
            let noMilkForCapuccino = "not enough milk"
            return noMilkForCapuccino
            
        }
        else {
            beans -= 10
            water -= 60
            milk -= 60
            let makeCapuchino = "your cappuccino sir"
            return makeCapuchino
        }
    }
}
