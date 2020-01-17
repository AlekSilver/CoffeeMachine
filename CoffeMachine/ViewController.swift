//
//  ViewController.swift
//  CoffeMachine
//
//  Created by Oleksandr Seliverstov on 02.01.2020.
//  Copyright © 2020 Oleksandr Seliverstov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayLabel: UILabel!
    @IBOutlet weak var espressoButton: UIButton!
    @IBOutlet weak var americanoButton: UIButton!
    @IBOutlet weak var americanoMilkButton: UIButton!
    @IBOutlet weak var capuchinoButton: UIButton!
    @IBOutlet weak var machineImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.setValue(true, forKey: "hidesShadow")
        machineImage.image = UIImage(named: "coffeemachine")
        espressoButton.layer.masksToBounds = true
        espressoButton.layer.cornerRadius = 10
        americanoButton.layer.masksToBounds = true
        americanoButton.layer.cornerRadius = 10
        americanoMilkButton.layer.masksToBounds = true
        americanoMilkButton.layer.cornerRadius = 10
        capuchinoButton.layer.masksToBounds = true
        capuchinoButton.layer.cornerRadius = 10
        displayLabel.text = myCoffeeMachine.description
    }
    
    let myCoffeeMachine = CoffeeMachine.init(water: 0, coffee: 0, milk: 0, tray: 0)
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let serviceVC = segue.destination as! ServiceViewController
        serviceVC.myCoffeeMachine = myCoffeeMachine
    }
    
    @IBAction func makeEspresso(_ sender: UIButton) {
        displayLabel.text = myCoffeeMachine.makeDrink(drink: EDrink.espresso.make)
    }
    @IBAction func makeAmericano(_ sender: UIButton) {
        displayLabel.text = myCoffeeMachine.makeDrink(drink: EDrink.americano.make)
    }
    @IBAction func makeAmericanoMilk(_ sender: UIButton) {
        displayLabel.text = myCoffeeMachine.makeDrink(drink: EDrink.americanoMilk.make)
    }
    @IBAction func makeCapuchino(_ sender: UIButton) {
        displayLabel.text = myCoffeeMachine.makeDrink(drink: EDrink.capuchino.make)
    }
    @IBAction func makeService(_ sender: UIButton) {
        performSegue(withIdentifier: "showService", sender: nil)
    }
    
}

