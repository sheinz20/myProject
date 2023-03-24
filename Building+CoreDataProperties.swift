//
//  Building+CoreDataProperties.swift
//  
//
//  Created by Sophia Heinz on 3/23/23.
//
//

import Foundation
import CoreData


extension Building {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Building> {
        return NSFetchRequest<Building>(entityName: "Building")
    }

    @NSManaged public var address: String?
    @NSManaged public var buildingID: Int64
    @NSManaged public var doorCode: Int64

}
