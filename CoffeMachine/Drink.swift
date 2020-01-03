//
//  Drink.swift
//  CoffeMachine
//
//  Created by Oleksandr Seliverstov on 02.01.2020.
//  Copyright © 2020 Oleksandr Seliverstov. All rights reserved.
//

import UIKit

class Drink: NSObject {
    var drinkName = ""
    var drinkWater = 0
    var drinkCoffee = 0
    var drinkMilk = 0
    
    func espresso () -> (drinkName: String, drinkWater: Int, drinkCoffee: Int, drinkMilk: Int) {
        drinkName = "Espresso"
        drinkWater = 100
        drinkCoffee = 1
        drinkMilk = 0
        return (drinkName, drinkWater, drinkCoffee, drinkMilk)
    }
    
    func americano () -> (drinkName: String, drinkWater: Int, drinkCoffee: Int, drinkMilk: Int) {
        drinkName = "Americano"
        drinkWater = 200
        drinkCoffee = 1
        drinkMilk = 0
        return (drinkName, drinkWater, drinkCoffee, drinkMilk)
    }
    
    func americanoMilk () -> (drinkName: String, drinkWater: Int, drinkCoffee: Int, drinkMilk: Int) {
        drinkName = "Americano with Milk"
        drinkWater = 200
        drinkCoffee = 1
        drinkMilk = 50
        return (drinkName, drinkWater, drinkCoffee, drinkMilk)
    }
    
    func capuchino () -> (drinkName: String, drinkWater: Int, drinkCoffee: Int, drinkMilk: Int) {
        drinkName = "Capuchino"
        drinkWater = 100
        drinkCoffee = 1
        drinkMilk = 100
        return (drinkName, drinkWater, drinkCoffee, drinkMilk)
    }
    
}
