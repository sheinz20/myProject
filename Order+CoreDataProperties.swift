//
//  Order+CoreDataProperties.swift
//  
//
//  Created by Sophia Heinz on 3/23/23.
//
//

import Foundation
import CoreData


extension Order {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Order> {
        return NSFetchRequest<Order>(entityName: "Order")
    }

    @NSManaged public var customerID: Int64
    @NSManaged public var lockerID: Int64
    @NSManaged public var orderDate: Date?
    @NSManaged public var orderID: Int64
    @NSManaged public var totalAmount: NSDecimalNumber?
    @NSManaged public var whichLocker: Lockers?

}
