//
//  CartScreen.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI

struct CartScreen: View {
    
    @EnvironmentObject private var store: Store
    
    var body: some View {
        
        VStack {
            
            NavBar()
            
            ScrollView(.vertical) {
                
                if store.state.shoppingCart.isEmpty {
                    
                    // Show Empty View
                    
                }else {
                    createList()
                }
                
                //Scroll View
            }
            
            //VStack
        }
        .background(Color.background)
        .ignoresSafeArea()
    }
    
    
    
    
    fileprivate func createList() -> some View {
        ForEach(store.state.shoppingCart) { product in
            CartItem(cart: product)
        }
    }
    
    fileprivate func NavBar() -> some View {
        
        HStack {
            
            Text("Cart")
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(.black)
            
        }.padding(.top, 20)
        .frame(width: Sizes.screenWidth, height: Sizes.screenHeight/10, alignment: .center)
        .background(Color.background)
        
    }
    
    
}

