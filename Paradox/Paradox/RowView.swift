//
//  RowView.swift
//  Paradox
//
//  Created by AIR on 30/09/2022.
//

import SwiftUI


struct RowView: View {
   
@EnvironmentObject var cartmanger : cartManger
    var model1: Model
    
   
    var body: some View {
        
        VStack{
        HStack {
             
            Image (model1.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
        
                .frame(width:100, height: 100)
                
            
            
            VStack (alignment: .leading){
                Text(model1.name)
                    .font(.subheadline)
                    .fontWeight(.semibold)
                  
                
                Text("\(model1.details)")
                    .font(.caption2)
                    .fontWeight(.medium)
                    .foregroundColor(Color.gray)
        }
            Spacer()
            
            VStack{
            // Ethurum
            HStack (spacing: -12) {
                
                Text("\(model1.ETH) ETH")
                    .font(.caption)
                    
                    .fontWeight(.bold)
                    .foregroundColor(Color(hue: 0.661, saturation: 0.937, brightness: 0.515))
                    .padding(.top)
                
                Image ("eth")
                    .resizable()
                    .frame(width:8, height: 14)
                    .scaledToFit()
                    .padding([.top, .leading])
            }
                Text("value: \(model1.value) KWD")
                    .font(.caption2)
                    .fontWeight(.medium)
                    .foregroundColor(Color.gray)
                    .padding(.bottom)
                
            }
            
            //trash
                //Spacer()
               // Image (systemName: "trash.fill")
                //    .resizable()
                //    .frame(width: 15, height: 18)
              //      .foregroundColor(.gray)
            
                //{ cartmanger.removeFromCart(model1: model1) }
            
            
    
          }
        
        .padding(.horizontal)
        .frame(width: .infinity, alignment: .leading)
        
        .padding(.all)
            
           
    Spacer()
            
            //Text ("Check out")
           //     .font(.headline)
           //     .fontWeight(.heavy)
          //      .foregroundColor(.white)
            
         //       .padding()
         //       .background(Color(hue: 0.661, saturation: 0.937, brightness: 0.515))
        //        .cornerRadius(20)
            
            
       }
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView (model1:ModelsList[1] )
            .environmentObject(cartManger())
    }
  }

