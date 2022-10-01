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
   var info: String
   
  
    
    
    
}

 var ModelsList = [
    Model( name: "Pavilion House", modelName: "Chinese_Traditional_Pavilion.usdz", details: "550871", ETH: 59, value: 24442, image: "1", info: "A Chinese pavilion (Chinese 亭, pinyin tíng) is a garden pavilion in traditional Chinese architecture."),
    
    
    Model(name: "Skeletons ", modelName: "Monster_model.usdz", details: "346901", ETH: 15, value: 6214, image: "2", info: "skeletons are a popular form of the physically manifested undead found in fiction. Like the Grim Reaper, they are likely associated with death and decay." ),
    
    Model(name: "Glaucus ", modelName: "Toy_Dragon.usdz", details: "342613", ETH: 37, value: 15328, image: "3", info: "The blue dragon (Glaucus atlanticus) is a type of mollusk, or sea slug, known as a nudibranch. "),
    
    
    Model(name: "Toy Robot", modelName: "toy_robot_vintage.usdz", details:" 099547", ETH: 94, value: 38941, image: "4", info: "robot fashioned out of 7 vintage television cabinets and one vintage radio cabinet refitted with 8 new color televisions."),
 ]
