//
//  ServiceViewController.swift
//  CoffeMachine
//
//  Created by Oleksandr Seliverstov on 15.01.2020.
//  Copyright © 2020 Oleksandr Seliverstov. All rights reserved.
//

import UIKit

class ServiceViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addWater(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
        CoffeeMachine.water = CoffeeMachine.water + 1000
        (navigationController?.viewControllers.first as? ViewController)?.displayLabel.text = "Вода добавлена \n Выберите напиток"
        print("Вода добавлена \n Выберите напиток")
    }
    @IBAction func addCoffee(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
        CoffeeMachine.coffee = CoffeeMachine.coffee + 5
        (navigationController?.viewControllers.first as? ViewController)?.displayLabel.text = "Кофе добавлен \n Выберите напиток"
        print("Кофе добавлен \n Выберите напиток")
    }
    @IBAction func addMilk(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
        CoffeeMachine.milk = CoffeeMachine.milk + 500
        (navigationController?.viewControllers.first as? ViewController)?.displayLabel.text = "Молоко добавлено \n Выберите напиток"
        print("Молоко добавлено \n Выберите напиток")
    }
    @IBAction func cleanTray(_ sender: UIButton) {
        navigationController?.popToRootViewController(animated: true)
        CoffeeMachine.tray = 0
        (navigationController?.viewControllers.first as? ViewController)?.displayLabel.text = "Лоток для отходов чист \n Выберите напиток"
        print("Лоток для отходов чист \n Выберите напиток")
    }
    
}
