//
//  Building+CoreDataProperties.swift
//  
//
//  Created by Sophia Heinz on 2/24/23.
//
//

import Foundation
import CoreData


extension Building {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Building> {
        return NSFetchRequest<Building>(entityName: "Building")
    }

    @NSManaged public var buildingID: Int64
    @NSManaged public var address: String?
    @NSManaged public var doorCode: Int64

}
