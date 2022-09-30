//
//  ModelCard.swift
//  Paradox
//
//  Created by AIR on 30/09/2022.
//

import Foundation

struct Model : Identifiable {
    
    var id = UUID()
    var name : String
    var modelName : String
    var details : String
    var ETH : Int
    var value: Int
    var image: String
    
   
  
    
    
    
}

 var ModelsList = [
    Model( name: "Chinese House", modelName: "Chinese_Traditional_Pavilion.usdz", details: "550871", ETH: 59, value: 24442, image: "1"),
    
    
    Model(name: "Monster", modelName: "Monster_model.usdz", details: "346901", ETH: 15, value: 6214, image: "2"),
    
    
    Model(name: "Monster", modelName: "Toy_Dragon.usdz", details: "342613", ETH: 37, value: 15328, image: "3"),
    
    Model(name: "Vinatge Toy", modelName: "toy_robot_vintage", details:" 099547", ETH: 94, value: 38941, image: "4")
 ]
