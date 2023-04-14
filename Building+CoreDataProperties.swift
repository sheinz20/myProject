//
//  Building+CoreDataProperties.swift
//  myProject
//
//  Created by Sophia Heinz on 3/29/23.
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

extension Building : Identifiable {

}
