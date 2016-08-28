//
//  Usuario+CoreDataProperties.swift
//  Health
//
//  Created by Lizzy Cruz on 27/08/16.
//  Copyright © 2016 Lizzy Cruz. All rights reserved.
//
//  Choose "Create NSManagedObject Subclass…" from the Core Data editor menu
//  to delete and recreate this implementation file for your updated model.
//

import Foundation
import CoreData

extension Usuario {

    @NSManaged var actividadfisica: NSNumber
    @NSManaged var bmi: NSNumber
    @NSManaged var contrasena: String
    @NSManaged var edad: NSNumber
    @NSManaged var eer: NSNumber
    @NSManaged var estatura: NSNumber
    @NSManaged var idper: NSNumber
    @NSManaged var peso: NSNumber
    @NSManaged var sexo: NSNumber
    @NSManaged var usuario: String
    @NSManaged var email: String

}
