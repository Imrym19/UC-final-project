//
//  ContentView.swift
//  Paradox
//
//  Created by AIR on 29/09/2022.
//

import SwiftUI

struct Display: View {
    
    @StateObject var cartmanger = cartManger()
    
    var columing = [GridItem(.adaptive(minimum: 300), spacing: 20)]
    
    var body: some View {
        
        
        NavigationView {
            ScrollView {
                LazyVGrid (columns: columing){
                    
                ForEach (ModelsList, id: \.id) {model1 in ProductCard (model1:  model1)
                        .padding(.top)
                        .environmentObject(cartmanger)
                }
                }
                
                .navigationTitle(Text ("Purchase"))
                
                .toolbar {
                    NavigationLink{
                        CardView()
                            .environmentObject(cartmanger)
                        
                        
                    } label: {
                        CardButton(numberOfProducts: cartmanger.model2.count)
                    }
                    
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Display()
    }
}
