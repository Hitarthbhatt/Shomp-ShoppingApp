//
//  HomeScreen.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI

struct HomeScreen: View {
    
    @Binding var category: Category?
    
    let data = Home.data
    @State var selected = Home.data.first!
    @EnvironmentObject private var store: Store
    @Namespace var animation
    
    
    var body: some View {
        
        ZStack(alignment: .top) {
            
            TabView(selection: self.$selected.id) {
                ForEach(data) { item in
                    
                    createPageController(item)
                        .frame(height: Sizes.screenHeight)
                        .tag(item.id)
                        .onTapGesture(perform: { category = item.id })
                }
                
                //Tab View
            }.tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            TabIndicator(category: selected.id, animation: animation)
                .padding(.top, 50)
            
            //ZStack
        }.background(Color.background)
        
        
    }
    
    
    
    fileprivate func createPageController(_ data: Home) -> PagingController<PageView> {
        
        return PagingController(viewControllers: data.pages.map {
            UIHostingController(rootView: PageView(page: $0))
        }, selectedIndex: .constant(0))
        
    }
    
    
    
    
}


