//
//  Customer+CoreDataProperties.swift
//  
//
//  Created by Sophia Heinz on 3/23/23.
//
//

import Foundation
import CoreData


extension Customer {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Customer> {
        return NSFetchRequest<Customer>(entityName: "Customer")
    }

    @NSManaged public var customerID: Int64
    @NSManaged public var email: String?
    @NSManaged public var name: String?
    @NSManaged public var phone: Int64

}
