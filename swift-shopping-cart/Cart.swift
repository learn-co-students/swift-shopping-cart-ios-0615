//
//  Cart.swift
//  swift-shopping-cart
//
//  Created by Amitai Blickstein on 12/20/15.
//  Copyright © 2015 Flatiron School. All rights reserved.
//

import Foundation

class Cart {
    var items:[Item] = []
    
    func totalPriceInCents()->Int {
        var totalPrice:Int = 0
        for item in items {
            totalPrice += item.priceInCents
        }
        return totalPrice
    }
    
    func addItem(newItem:Item) {
        items.append(newItem)
    }
    
    func removeItem(itemToKill:Item) {
        items = items.filter() { $0 != itemToKill }
    }
    
    func itemsWithName(name:String)->[Item] {
        return items.filter() { $0.name == name }
    }
    
    func itemsWithMinimumPriceInCents(cutoff:Int)->[Item] {
        return items.filter() { $0.priceInCents >= cutoff }
    }
    
    func itemsWithMaximumPriceInCents(cutoff:Int)->[Item] {
        return items.filter() { $0.priceInCents <= cutoff }
    }
}