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
    
}

enum EDrink {
    case espresso
    case americano
    case americanoMilk
    case capuchino
    
    var make: Drink {
        switch self {
        case .espresso:
            return Drink(name: "Espresso", water: 100, coffee: 1, milk: 0)
        case .americano:
            return Drink(name: "Americano", water: 200, coffee: 1, milk: 0)
        case .americanoMilk:
            return Drink(name: "Americano with Milk", water: 200, coffee: 1, milk: 50)
        case .capuchino:
            return Drink(name: "Capuchino", water: 100, coffee: 1, milk: 100)
        }
    }
    
}

