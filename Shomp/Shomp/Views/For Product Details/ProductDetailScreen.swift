//
//  ProductDetailScreen.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI

struct ProductDetailScreen: View {
    
    var product: Product
    var onDismiss = {}
    
    @State private var progress: CGFloat = 1
    @State private var selectedIndex: Int?
    
    @Namespace private var animation
    
    private let foldedHeight: CGFloat = 250
    private let expandedHeight = Sizes.screenHeight - UIScreen.main.bounds.width
    
    
    private let imageTransition = AnyTransition.asymmetric(insertion: .move(edge: .bottom), removal: .move(edge: .bottom))
    
    
    var body: some View {
        
        ZStack(alignment: .top) {
            
            createPagingController()
            createNavBar()
            
            if selectedIndex == nil {
                createCustomSheet()
            }else {
                createProductImageView()
            }
            
            //ZStack
        }.ignoresSafeArea()
        .animation(.easeInOut)
        
    }
    
    
    fileprivate func createCustomSheet() -> some View {
        
        CustomSheet(progress: $progress, foldedHeight: self.foldedHeight, expandedHeight: self.expandedHeight) {
            ProductDetailContent(product: product)
        }.transition(imageTransition)
        
    }
    
    
    fileprivate func createProductImageView() -> some View {
        let image = product.images
        
        return ProductImageView(imageUrl: image[selectedIndex!], animation: animation) {
            withAnimation(.spring()) {
                self.selectedIndex = nil
            }
        }
    }
    
    
    fileprivate func createNavBar() -> some View {
        ClearNavBar(onDismiss: onDismiss)
            .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
    }
    
    
    
    
    fileprivate func createPagingController() -> some View {
        PagingController(viewControllers: product.images.map {
            
            UIHostingController(rootView: ImageView(image: $0, animation: animation))
            
        }, selectedIndex: $selectedIndex)
    }
    
    
    
    
}

