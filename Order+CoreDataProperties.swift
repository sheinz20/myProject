//
//  Order+CoreDataProperties.swift
//  
//
//  Created by Sophia Heinz on 2/24/23.
//
//

import Foundation
import CoreData


extension Order {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Order> {
        return NSFetchRequest<Order>(entityName: "Order")
    }

    @NSManaged public var orderID: Int64
    @NSManaged public var lockerID: Int64
    @NSManaged public var customerID: Int64
    @NSManaged public var orderDate: Date?
    @NSManaged public var totalAmount: NSDecimalNumber?

}
