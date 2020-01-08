//
//  Drink.swift
//  CoffeMachine
//
//  Created by Oleksandr Seliverstov on 02.01.2020.
//  Copyright © 2020 Oleksandr Seliverstov. All rights reserved.
//

import UIKit

class Drink: NSObject {
    var name = ""
    var water = 0
    var coffee = 0
    var milk = 0
    
    func espresso () -> Drink {
        let drink = Drink()
        drink.name = "Espresso"
        drink.water = 100
        drink.coffee = 1
        drink.milk = 0
        return drink
    }
    
    func americano () -> Drink {
        let drink = Drink()
        drink.name = "Americano"
        drink.water = 200
        drink.coffee = 1
        drink.milk = 0
        return drink
    }
    
    func americanoMilk () -> Drink {
        let drink = Drink()
        drink.name = "Americano with Milk"
        drink.water = 200
        drink.coffee = 1
        drink.milk = 50
        return drink
    }
    
    func capuchino () -> Drink {
        let drink = Drink()
        drink.name = "Capuchino"
        drink.water = 100
        drink.coffee = 1
        drink.milk = 100
        return drink
    }
    
}
