//
//  Test+CoreDataProperties.swift
//  FootballFixtures
//
//  Created by Abdullah on 05/09/2021.
//
//

import Foundation
import CoreData


extension Test {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Test> {
        return NSFetchRequest<Test>(entityName: "Test")
    }

    @NSManaged public var test: Bool

}

extension Test : Identifiable {

}
