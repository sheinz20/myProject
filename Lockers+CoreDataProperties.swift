//
//  Lockers+CoreDataProperties.swift
//  
//
//  Created by Sophia Heinz on 3/23/23.
//
//

import Foundation
import CoreData


extension Lockers {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Lockers> {
        return NSFetchRequest<Lockers>(entityName: "Lockers")
    }

    @NSManaged public var available: Int64
    @NSManaged public var buidlingID: Int64
    @NSManaged public var lockerCode: Int64
    @NSManaged public var lockerID: Int64
    @NSManaged public var orderID: Int64
    @NSManaged public var whichOrder: Order?

}
