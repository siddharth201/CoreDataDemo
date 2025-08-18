//
//  Employee+CoreDataProperties.swift
//  CoreDataDemo
//
//  Created by Siddharth on 05/08/25.
//
//

import Foundation
import CoreData


extension Employee {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Employee> {
        return NSFetchRequest<Employee>(entityName: "Employee")
    }

    @NSManaged public var name: String?

}

extension Employee : Identifiable {

}
