//
//  AddOrderViewModel.swift
//  HotCoffeeApp
//
//  Created by ioannis giannakidis on 20/9/19.
//  Copyright © 2019 ioannis giannakidis. All rights reserved.
//

import Foundation
import SwiftUI

class AddOrderViewModel {
    
    var name: String = ""
    var type: String = ""
    func saveOrder() {
        
        CoreDataManager.shared.saveOrder(name: self.name, type: self.type)
    }
}
