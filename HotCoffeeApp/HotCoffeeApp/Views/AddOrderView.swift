//
//  AddOrderView.swift
//  HotCoffeeApp
//
//  Created by ioannis giannakidis on 20/9/19.
//  Copyright © 2019 ioannis giannakidis. All rights reserved.
//

import SwiftUI

struct AddOrderView: View {
    
    @State var AddORderVM = AddOrderViewModel()
    var body: some View {
        NavigationView{
        Group {
        VStack {
            TextField("Enter name",text:self.$AddORderVM.name)
            Picker(selection: self.$AddORderVM.type, label:Text("")) {
                Text("Cappuccino").tag("cap")
                Text("Regular").tag("reg")
                Text("Espresso").tag("esp")
            }.pickerStyle(SegmentedPickerStyle())
            
            Button("Place Order") {
                self.AddORderVM.saveOrder()
            }.padding(8)
                .foregroundColor(Color.white)
                .background(Color.green)
            .cornerRadius(10)
            
            
        }
        }.padding()
        .navigationBarTitle("Add Order")
        }
    }
}

struct AddOrderView_Previews: PreviewProvider {
    static var previews: some View {
        AddOrderView()
    }
}
