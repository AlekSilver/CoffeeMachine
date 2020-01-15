//
//  Drink.swift
//  CoffeMachine
//
//  Created by Oleksandr Seliverstov on 02.01.2020.
//  Copyright © 2020 Oleksandr Seliverstov. All rights reserved.
//

import UIKit

class Drink: NSObject {
    let name: String
    let water: Int
    let coffee: Int
    let milk: Int
    
    init(name: String, water: Int, coffee: Int, milk: Int) {
        self.name = name
        self.water = water
        self.coffee = coffee
        self.milk = milk
    }
    
    static func espresso() -> Drink {
        return Drink(name: "Espresso", water: 100, coffee: 1, milk: 0)
    }
    static func americano() -> Drink {
        return Drink(name: "Americano", water: 200, coffee: 1, milk: 0)
    }
    static func americanoMilk() -> Drink {
        return Drink(name: "Americano with Milk", water: 200, coffee: 1, milk: 50)
    }
    static func capuchino() -> Drink {
        return Drink(name: "Capuchino", water: 100, coffee: 1, milk: 100)
    }
    
}
