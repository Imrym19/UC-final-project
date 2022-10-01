//
//  3DView.swift
//  Final
//
//  Created by AIR on 29/09/2022.
//

import SwiftUI
import SceneKit

struct ContentView: View {
    @StateObject var card: cartManger
    @State var index = 0
    
    var model1: Model
    
    //var body: some View {

// home view

//struct Home : View{
    //@State var ModelsList = [
     //   Model(id: 0, name: "Chinese House", modelName: "Chinese_Traditional_Pavilion.usdz", details: "344187", ETH: 59, value: 24442, buy: "Buy now!"),
        
        
      //  Model(id: 0, name: "Drummer", modelName: "toy_drummer.usdz", details: "346901", ETH: 15, value: 6214, buy: "Buy now!")
  //  ]
    
  
   

    var body: some View{
        NavigationView {
        
        VStack{
            
            SceneView (scene: SCNScene(named: ModelsList[index].modelName), options: [.autoenablesDefaultLighting, .allowsCameraControl])
            
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
            
            ZStack{
                
                
                // scroll button
                HStack {
                    Button (action: {
                        
                        withAnimation {
                            if index > 0 {
                                
                                index -= 1
                            }
                        }
                    },
                            
                            label: {
                        
                        
                        Image (systemName: "chevron.left")
                            .font(.system(size: 35, weight: .bold))
                        
                            .opacity(index == 0 ? 0.3 : 1)
                    })
                    
                    .disabled(index == 0 ? true : false )
                    
                    Spacer (minLength: 0)
                    
                    
                    
                    Button (action: {
                        
                        withAnimation {
                            if index < ModelsList.count {
                                
                                index += 1
                            }
                        }
                    },
                            
                            label: {
                        
                        
                        Image (systemName: "chevron.right")
                            .font(.system(size: 35, weight: .bold))
                        
                        // disabling button when no data
                            .opacity(index == ModelsList.count - 1 ? 0.3 : 1)
                        
                        
                    })
                    
                    .disabled(index == ModelsList.count - 1 ? true : false )
                }
                Text(ModelsList[index].name)
                    .font (.system(size: 45, weight: .bold))
            }
            .foregroundColor(.black)
            .padding(.horizontal)
            .padding(.vertical, 30)
            
            
            
            
            
            
            
            
            
            // details
           
            .environmentObject(card)
            VStack ( alignment: .leading, spacing: 12) {
            
                
                Text ("Number: \(ModelsList[index].details) ")
                    .font(.caption)
                    .fontWeight(.semibold)
                    
                    
                
                
                Text("Details: \(ModelsList[index].info) ")
                    .font(.caption)
                    .fontWeight(.semibold)
                
                
                
                
               // HStack {
                   // Text("price:      \(ModelsList[index].ETH) ETH")
                //        .fontWeight(.semibold)
                    
               //     Image ("eth")
             //           .resizable()
             //           .frame(width: 13, height: 20)
             //           .scaledToFit()
            //    }
                
                
                
             //   Text("value:      \(ModelsList[index].value) KWD")
            //        .fontWeight(.semibold)
             //       .foregroundColor(.gray)
                    
                
                Spacer()


                
                
                // huonaa
                    .navigationTitle(Text("NFTs"))
                
                               
                             
                           }
            .toolbar {
                NavigationLink{
                    Display()
                        
                    
                    
                } label: {
                    
                    Image (systemName: "dollarsign.circle.fill")
                        .foregroundColor(Color(hue: 0.351, saturation: 0.709, brightness: 0.378))
                        
                    
                    
                }
                
            }
                     }
                
                
            .padding(.horizontal)
            Spacer (minLength: 0)
            
                
            }
            .navigationViewStyle(StackNavigationViewStyle())
            
        }
            

        
            
        
    }
    
    
  

    



//data model

//struct Model : Identifiable {
    
    //var id : Int
   // var name : String
 //   var modelName : String
   // var details : String
    //var ETH : Int
    //var value: Int
   // var buy : String

//}
struct ContentViewPreviews: PreviewProvider {
    static var previews: some View {
        ContentView (card: cartManger (), model1: ModelsList[0])
            .environmentObject(cartManger())
    }
}
