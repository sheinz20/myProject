//
//  Product+CoreDataProperties.swift
//  myProject
//
//  Created by Sophia Heinz on 3/29/23.
//
//

import Foundation
import CoreData


extension Product {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Product> {
        return NSFetchRequest<Product>(entityName: "Product")
    }

    @NSManaged public var available: Int64
    @NSManaged public var category: String?
    @NSManaged public var details: String?
    @NSManaged public var name: String?
    @NSManaged public var numOfNights: Int64
    @NSManaged public var price: NSDecimalNumber?
    @NSManaged public var productID: Int64

}

extension Product : Identifiable {

}
