//
//  CardView.swift
//  Paradox
//
//  Created by AIR on 30/09/2022.
//

import SwiftUI

struct CardView: View {
    
    @EnvironmentObject var cartmanger : cartManger
    var body: some View {


        ScrollView{
            
            
            //cart button
           // if numberOfProducts > 0 {
            //    Text ("\(numberOfProducts)")

            if cartmanger.model2.count > 0 {
                ForEach(cartmanger.model2, id: \.id) {
                    
                model1 in
                RowView(model1: model1)
                   }
                
                
                VStack {
                    HStack{
                        
                        
                        Text ("Total:")
                            .fontWeight(.bold)
                            
                            
                        // Ehurum
                        HStack  {
                                
                            Text("\(cartmanger.total) ETH")
                                    .font(.subheadline)
                                        .fontWeight(.bold)
                                        .foregroundColor(Color(hue: 0.661, saturation: 0.937, brightness: 0.515))
                                     
                                    
                            
                                    Image ("eth")
                                        .resizable()
                                        .frame(width:8, height: 14)
                                        .scaledToFit()
                                        
                                }
                     
                        

                        //Text("$\(cartmanger.vallue) KWD")
                        //    .font(.caption)
                     //   foregroundColor(Color.gray)
                        
                    }
                    Text ("Check out")
                        .font(.headline)
                        .fontWeight(.heavy)
                        .foregroundColor(.white)
                    
                        .padding()
                        .background(Color(hue: 0.661, saturation: 0.937, brightness: 0.515))
                        .cornerRadius(20)
                    .padding()
                }
                
                } else {
                    
        Text ("Cart is Empty")
                    
                }
                
            }
        .navigationTitle(Text("Cart"))
        .padding(.top)
        
        }
    }


struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
            .environmentObject(cartManger())
      }
    }
  

