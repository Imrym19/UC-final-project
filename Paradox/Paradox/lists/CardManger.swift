//
//  CardManger.swift
//  Paradox
//
//  Created by AIR on 30/09/2022.
//

import Foundation

class cartManger: ObservableObject {
    @Published private(set) var model2: [Model] = []
    @Published private(set) var total: Int = 0
    //@Published private(set) var vallue: Int = 0

    func addToCart (model1: Model) {
        model2.append(model1)
        total += model1.ETH
        
    }
    
    func removeFromCart (model1: Model){
        model2 = model2.filter {$0.id != model1.id}
        total -= model1.ETH
        
        
        
    }
    
    //func addToValue (model1: Model) {
  //      model2.append(model1)
 //       vallue += model1.value
        
  //  }
    
    
}
