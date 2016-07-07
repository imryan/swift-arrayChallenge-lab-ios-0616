//
//  ViewController.swift
//  ArrayChallenge
//
//  Created by James Campagno on 6/10/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var shoppingList: [String] = []

    func makeShoppingList(items: [String], quantityOfItems: [Int]) -> [String] {
        var list: [String] = []
        
        for (index, item) in items.enumerate() {
            list.append("\(index + 1). \(quantityOfItems[index]) \(item)")
        }
        
        return list
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let items = ["Bananas", "Apples", "Eggs", "Rolls"]
        let quantities = [6, 4, 12, 4]
        
        shoppingList = makeShoppingList(items, quantityOfItems: quantities)
        print(shoppingList)
    }
}