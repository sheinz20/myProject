//
//  Gear.swift
//  myProject
//
//  Created by Sophia Heinz on 3/30/23.
//

import Foundation

class Products {
    var name: String
    var description: String
    var category: String
    var price: NSDecimalNumber
    var numOfNights: Int64
    var available: Int64
    
    init(name: String, description: String, category: String, price: NSDecimalNumber, numOfNights: Int64, available: Int64) {
        self.name = name
        self.description = description
        self.category = category
        self.price = price
        self.numOfNights = numOfNights
        self.available = available
    }
    
    convenience init() {
        self.init(name: "", description: "", category: "", price: 0.00, numOfNights: 0, available: 0)
    }
    
}

