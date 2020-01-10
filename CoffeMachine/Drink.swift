//
//  Drink.swift
//  CoffeMachine
//
//  Created by Oleksandr Seliverstov on 02.01.2020.
//  Copyright © 2020 Oleksandr Seliverstov. All rights reserved.
//

import UIKit

class Drink: NSObject {
    static var name = ""
    static var water = 0
    static var coffee = 0
    static var milk = 0
    
    func espresso () -> Drink {
        Drink.name = "Espresso"
        Drink.water = 100
        Drink.coffee = 1
        Drink.milk = 0
        return Drink()
    }
    
    func americano () -> Drink {
        Drink.name = "Americano"
        Drink.water = 200
        Drink.coffee = 1
        Drink.milk = 0
        return Drink()
    }
    
    func americanoMilk () -> Drink {
        Drink.name = "Americano with Milk"
        Drink.water = 200
        Drink.coffee = 1
        Drink.milk = 50
        return Drink()
    }
    
    func capuchino () -> Drink {
        Drink.name = "Capuchino"
        Drink.water = 100
        Drink.coffee = 1
        Drink.milk = 100
        return Drink()
    }
    
}
