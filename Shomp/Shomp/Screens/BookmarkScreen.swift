//
//  BookmarkScreen.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI

struct BookmarkScreen: View {
    
    @EnvironmentObject private var store: Store
    
    init() {
        
    }
    
    private let columns = [
        GridItem(.adaptive(minimum: 150), spacing: 20)
    ]
    
    var body: some View {
        
        VStack {
            
            NavBar()
            
            ScrollView(.vertical) {
                
                if store.state.bookmarked.isEmpty {
                    
                    // Show Empty View
                    
                }else {
                    createGrid()
                }
                
                //Scroll View
            }
            
            //VStack
        }
        .padding(.horizontal, 15)
        .background(Color.background)
        .ignoresSafeArea()
    }
    
    
    
    fileprivate func createGrid() -> some View {
        LazyVGrid(columns: self.columns, alignment: .center, spacing: 40) {
            ForEach(store.state.bookmarked) { product in
                createProductItemView(product)
            }
        }
    }
    
    
    
    fileprivate func NavBar() -> some View {
        
        HStack {
            
            Text("Bookmark")
                .font(.title3)
                .fontWeight(.semibold)
                .foregroundColor(.black)
            
        }.padding(.top, 20)
        .frame(width: Sizes.screenWidth, height: Sizes.screenHeight/10, alignment: .center)
        .background(Color.background)
        
    }
    
    
    fileprivate func createProductItemView(_ product: Product) -> some View {
        ProductItemView(product: product) {
            
        } bookmark: {
            
        }
        
    }
    
    
}

