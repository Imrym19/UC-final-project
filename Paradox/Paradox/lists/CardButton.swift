//
//  CardButton.swift
//  Paradox
//
//  Created by AIR on 30/09/2022.
//

import SwiftUI

struct CardButton: View {
    
    var numberOfProducts: Int
    var body: some View {
        
        ZStack (alignment: .topTrailing) {
        Image (systemName: "cart.fill")
                .padding(.top, 9)
           
            
            
            if numberOfProducts > 0 {
                Text ("\(numberOfProducts)")
                    .font(.caption)
                    .fontWeight(.heavy)
                    .foregroundColor(Color.white)                    .background(Color.blue)
                    
                
                
                
            }

        }
    }
}

struct CardButton_Previews: PreviewProvider {
    static var previews: some View {
        CardButton(numberOfProducts: 1)
    }
}
