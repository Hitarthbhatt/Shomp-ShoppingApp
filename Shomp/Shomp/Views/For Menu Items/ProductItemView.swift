//
//  ProductItemView.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct ProductItemView: View {
    
    var product: Product
    var showDetail = {}
    var bookmark = {}
    
    var body: some View {
        
        VStack {
            // 2
            WebImage(url: URL(string: product.mainImage)!)
                .resizable()
                .scaledToFill()
                .frame(width: (Sizes.screenWidth / 2 - 25), height: 220)
                .cornerRadius(10)
                .onTapGesture(perform: showDetail)
            // 3
            
            HStack(alignment: .center) {
                VStack(alignment: .leading) {
                    
                    Text(product.title)
                        .font(.footnote)
                        .fontWeight(.medium)
                        .lineLimit(1)
                    // 4
                    
                    
                    Text(product.price)
                        .lightFont()
                    
                    //VStack
                }
                Spacer()
                
                Button(action: bookmark, label: {
                    Image(systemName: "bookmark")
                        .imageScale(.medium)
                        .textColor()
                })
                //HStack
            }.padding(.horizontal, 5)
            
            //VStack
        }.padding(.horizontal)
        
        
        
        
    }
}

