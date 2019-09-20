//
//  NSManagedContext+Extensions.swift
//  HotCoffeeApp
//
//  Created by ioannis giannakidis on 20/9/19.
//  Copyright © 2019 ioannis giannakidis. All rights reserved.
//

import Foundation
import UIKit
import CoreData

extension NSManagedObjectContext {
    static var current: NSManagedObjectContext{
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        return appDelegate.persistentContainer.viewContext
    }
    
    
}
