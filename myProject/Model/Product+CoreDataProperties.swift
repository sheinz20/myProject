//
//  Product+CoreDataProperties.swift
//  
//
//  Created by Sophia Heinz on 2/24/23.
//
//

import Foundation
import CoreData


extension Product {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Product> {
        return NSFetchRequest<Product>(entityName: "Product")
    }

    @NSManaged public var productID: Int64
    @NSManaged public var name: String?
    @NSManaged public var details: String?
    @NSManaged public var price: NSDecimalNumber?
    @NSManaged public var available: Int64
    @NSManaged public var numOfNights: Int64
    @NSManaged public var category: String?

}
