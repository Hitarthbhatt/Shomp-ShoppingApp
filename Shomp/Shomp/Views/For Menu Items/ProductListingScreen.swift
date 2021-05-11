//
//  ProductListingScreen.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI

struct ProductListingScreen: View {
    
    @Binding var category: Category?
    @EnvironmentObject private var store: Store
    @State private var selectedProduct: Product?
    
    private let columns = [
        GridItem(.adaptive(minimum: 150), spacing: 20)
    ]
    
    var body: some View {
        VStack(alignment: .leading) {
            
            createNavBar()
            
            ScrollView {
                
                createGrid()
            }.padding(.horizontal, 15)
            
            
            //VStack
        }.background(Color.background)
        .ignoresSafeArea()
        .onAppear(perform: {
            
            setProducts()
        }).fullScreenCover(item: $selectedProduct, content: {
            ProductDetailScreen(product: $0) {
                selectedProduct = nil
            }
        })
        
    }
    
    
    fileprivate func createGrid() -> some View {
        LazyVGrid(columns: self.columns, alignment: .center, spacing: 40) {
            ForEach(store.state.products) { product in
                createProductItemView(product)
            }
        }
    }
    
    
    fileprivate func createNavBar() -> some View {
        NavBarView(title: category?.toString() ?? "New In") {
            category = nil
        } onFilter: {
            
        }
    }
    
    
    
    fileprivate func setProducts() {
        guard let cat = self.category else { return }
        
        switch cat {
            case .men:
                store.dispatch(.addProducts(Product.men))
            case .women:
                store.dispatch(.addProducts(Product.women))
            case .kids:
                store.dispatch(.addProducts(Product.kids))
        }
        
    }
    
    
    
    fileprivate func createProductItemView(_ product: Product) -> some View {
        ProductItemView(product: product) {
            selectedProduct = product
        } bookmark: {
            store.dispatch(.bookmark(product))
        }

    }
    
    
}


