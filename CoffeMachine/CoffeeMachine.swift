//
//  CoffeeMachine.swift
//  CoffeMachine
//
//  Created by Oleksandr Seliverstov on 02.01.2020.
//  Copyright © 2020 Oleksandr Seliverstov. All rights reserved.
//

import UIKit

class CoffeeMachine: NSObject {
    
    override var description: String {
        return "Привет, я - личная кофемашина \n Выберите напиток".uppercased()
    }
    static var water: Int = 0
    static var coffee: Int = 0
    static var milk: Int = 0
    static var tray: Int = 0
    let waterMes = "Залейте воду"
    let coffeeMes = "Засыпьте кофе"
    let milkMes = "Залейте молоко"
    let trayMes = "Очистите контейнер отходов"
    private let trayLimit = 5
    
    init(water: Int, coffee: Int, milk: Int, tray: Int) {}
    
    func makeDrink(drink: Drink) -> String {
        var result = ""
        if CoffeeMachine.tray < trayLimit {
            if CoffeeMachine.water >= drink.water && CoffeeMachine.coffee >= drink.coffee && CoffeeMachine.milk >= drink.milk {
                result = "Возьмите Ваш \(drink.name)"
                print("Возьмите Ваш \(drink.name)")
                CoffeeMachine.water = CoffeeMachine.water - drink.water
                CoffeeMachine.coffee = CoffeeMachine.coffee - drink.coffee
                CoffeeMachine.milk = CoffeeMachine.milk - drink.milk
                CoffeeMachine.tray = CoffeeMachine.tray + 1
            } else if CoffeeMachine.water < drink.water {
                result = waterMes
                print(waterMes)
            } else if CoffeeMachine.coffee < drink.coffee {
                result = coffeeMes
                print(coffeeMes)
            } else if CoffeeMachine.milk < drink.milk {
                result = milkMes
                print(milkMes)
            }
        } else {
            result = trayMes
            print(trayMes)
        }
        return result
    }
    
}
