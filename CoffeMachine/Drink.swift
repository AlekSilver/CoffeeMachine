//
//  Drink.swift
//  CoffeMachine
//
//  Created by Oleksandr Seliverstov on 02.01.2020.
//  Copyright © 2020 Oleksandr Seliverstov. All rights reserved.
//

import UIKit

enum EDrink {
    case espresso
    case americano
    case americanoMilk
    case capuchino
    
    var make: (name: String, water: Int, coffee: Int, milk: Int) {
        switch self {
        case .espresso:
            return (name: "Espresso", water: 100, coffee: 1, milk: 0)
        case .americano:
            return (name: "Americano", water: 200, coffee: 1, milk: 0)
        case .americanoMilk:
            return (name: "Americano with Milk", water: 200, coffee: 1, milk: 50)
        case .capuchino:
            return (name: "Capuchino", water: 100, coffee: 1, milk: 100)
        }
    }
    
}


