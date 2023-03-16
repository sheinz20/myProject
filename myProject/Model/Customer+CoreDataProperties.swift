//
//  Customer+CoreDataProperties.swift
//  
//
//  Created by Sophia Heinz on 2/24/23.
//
//

import Foundation
import CoreData


extension Customer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Customer> {
        return NSFetchRequest<Customer>(entityName: "Customer")
    }

    @NSManaged public var customerID: Int64
    @NSManaged public var name: String?
    @NSManaged public var phone: Int64
    @NSManaged public var email: String?

}
