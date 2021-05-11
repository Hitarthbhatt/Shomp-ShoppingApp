//
//  ProductDetailContent.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI

struct ProductDetailContent: View {
    
    @EnvironmentObject private var store: Store
    
    var product: Product
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 30) {
            VStack(alignment: .leading, spacing: 20) {
                
                HStack(alignment: .center) {
                    
                Text(product.title)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                    Spacer()
                    
                Text(product.price)
                    .font(.headline)
                
                //HStack
               }
                
                HStack {
                    
                    HStack(spacing: 20) {
                        IconButton(icon: "square.and.arrow.up") {}
                        IconButton(icon: "bookmark") {}
                        IconButton(icon: "bag") {}
                    }
                    
                    Spacer()
                    
                    BorderedButton(text: "ADD") {
                        
                        store.dispatch(.addToCart(product))
                        
                    }
                    
                    //HStack
                }
                
                //VStack
            }
            
            Text(product.description)
                .font(.footnote)
                .foregroundColor(Color.black.opacity(0.8))
            
            VStack(alignment: .leading, spacing: 20) {
                
                ArrowButtton(text: "COMPOSITION AND CARE") {}
                ArrowButtton(text: "IN-STORE AVAILABILITY") {}
                ArrowButtton(text: "SHIPPING AND RETURNS") {}
                ArrowButtton(text: "CAN WE HELP YOU") {}
                
                //VStack
            }
            
            
            //VStack
        }.padding(.all, 20)
        
        
    }
}

