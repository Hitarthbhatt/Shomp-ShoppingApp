//
//  PagingController.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI

struct PagingController<T: View>: View {
    
    var viewControllers: [UIHostingController<T>] = []
    @State var currentPage: Int = 0
    @Binding var selectedIndex: Int?
    
    var body: some View {
        ZStack(alignment: .trailing) {
            CollectionView(controllers: viewControllers, currentPage: $currentPage, selectedIndex: $selectedIndex)
            
            VerticalPageIndicator(numberOfPages: viewControllers.count, selectedPageIndex: $currentPage)
                .padding(.trailing, 10)
            
            //ZStack
        }.ignoresSafeArea()
        
    }
}

