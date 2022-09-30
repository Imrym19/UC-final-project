//
//  ProductCard.swift
//  Paradox
//
//  Created by AIR on 30/09/2022.
//

import SwiftUI
import SceneKit


struct ProductCard: View {
    
    @EnvironmentObject var catrmanger : cartManger
    
    var model1: Model
    var body: some View {

        
        
        // payment
        ZStack {
            VStack{
                
                SceneView (scene: SCNScene(named: model1.modelName), options: [.autoenablesDefaultLighting, .allowsCameraControl])
                
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height / 2)
                
                
                VStack(alignment: .leading){
                Text (model1.name)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(Color.black)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                
                    HStack{
                        
                        Text("Number:")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                    
                
                Text ("\(model1.details)")
                            .font(.subheadline)
                            .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    
                    .foregroundColor(Color(hue: 0.661, saturation: 0.937, brightness: 0.515))
                
                    }
                    .padding(.top)
                    
                    HStack{
                        
                        Text("Price:")
                            .font(.footnote)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.leading)
                            .padding(/*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                        
                        
                HStack(spacing: -12) {
                Text ("\(model1.ETH)")
                        .font(.subheadline)
                        .fontWeight(.bold)
                            .foregroundColor(Color(hue: 0.678, saturation: 0.494, brightness: 0.241))
                    
                    Image ("eth")
                        .resizable()
                        .frame(width:10, height:16)
                        .scaledToFit()
                        .padding(.leading)
                    
                   }
                }
                    HStack{
                        
                        Text ("value:")
                            .font(.caption)
                            .fontWeight(.semibold)
                            .foregroundColor(Color.gray)
                            .multilineTextAlignment(.leading)
                            .padding(/*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                        
                        
                        
                Text("\(model1.value) KWD")
                            .font(.caption2)
                    .fontWeight(.medium)
                    .foregroundColor(Color.gray)
                    
                }
                }
                Spacer()
            Button {
                catrmanger.addToCart(model1: model1)
              //  catrmanger.addToValue(model1: model1)

        }  label: {
            
            HStack {
                
                Text("Buy now")
                    .font(.title3)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding([.top, .leading, .bottom])
                    
               
                Image (systemName: "creditcard.fill")
                     .resizable()
                     .frame(width: 20, height: 15)
                     .foregroundColor(Color.white)
                     .padding(.trailing)
           }
            .background(Color(hue: 0.661, saturation: 0.937, brightness: 0.515))
            .cornerRadius(20)
            
           }
            
            
      }
    }
}

struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(model1: ModelsList[0])
            .environmentObject(cartManger())
    }
  }
}
