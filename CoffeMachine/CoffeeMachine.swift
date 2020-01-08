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
    var water: Int
    var coffee: Int
    var milk: Int
    var tray: Int
    let waterMes = "Залейте воду"
    let coffeeMes = "Засыпьте кофе"
    let milkMes = "Залейте молоко"
    let trayMes = "Очистите контейнер отходов"
    private let trayLimit = 5
    
    init(water: Int, coffee: Int, milk: Int, tray: Int) {
        self.water = water
        self.coffee = coffee
        self.milk = milk
        self.tray = tray
    }
    
    func makeDrink(drink: Drink) -> String {
        var result = ""
        if tray < trayLimit {
            if water >= drink.water && coffee >= drink.coffee && milk >= drink.milk {
                result = "Возьмите Ваш \(drink.name)"
                print("Возьмите Ваш \(drink.name)")
                water = water - drink.water
                coffee = coffee - drink.coffee
                milk = milk - drink.milk
                tray = tray + 1
            } else if water < drink.water {
                result = waterMes
                print(waterMes)
            } else if coffee < drink.coffee {
                result = coffeeMes
                print(coffeeMes)
            } else if milk < drink.milk {
                result = milkMes
                print(milkMes)
            }
        } else {
            result = trayMes
            print(trayMes)
        }
        return result
    }
    
    func addWater() -> String {
        var result = ""
        water = water + 1000
        result = "Вода добавлена \n Выберите напиток"
        print("Вода добавлена \n Выберите напиток")
        return result
    }
    
    func addCoffee() -> String {
        var result = ""
        coffee = coffee + 5
        result = "Кофе добавлен \n Выберите напиток"
        print("Кофе добавлен \n Выберите напиток")
        return result
    }
    
    func addMilk() -> String {
        var result = ""
        milk = milk + 500
        result = "Молоко добавлено \n Выберите напиток"
        print("Молоко добавлено \n Выберите напиток")
        return result
    }
    
    func cleanTray() -> String {
        var result = ""
        tray = 0
        result = "Лоток для отходов чист \n Выберите напиток"
        print("Лоток для отходов чист \n Выберите напиток")
        return result
    }
    
}
