//
//  CoreDataManager.swift
//  HotCoffeeApp
//
//  Created by ioannis giannakidis on 20/9/19.
//  Copyright © 2019 ioannis giannakidis. All rights reserved.
//

import Foundation
import CoreData

class CoreDataManager {
    
    static let shared = CoreDataManager(moc:NSManagedObjectContext.current)
    var moc: NSManagedObjectContext
    private init (moc:NSManagedObjectContext){
        self.moc = moc
    }
    func saveOrder(name:String, type:String) {
        let order = Order(context: self.moc)
        order.name = name
        order.type = type
        
        do {
            try self.moc.save()
            
        }catch let error as NSError {
            print(error)
        }
        
    }
}
