//
//  ContentView.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

  
import SwiftUI

struct ContentView: View {
    
    
    // Hiding Tab Bar Appearance.
    init() {
        UITabBar.appearance().isHidden = true
    }
    
    
    @EnvironmentObject private var store: Store
    @State private var presentScreeen = false
    @State private var selectedCategory: Category?
    
    // For Changing Tab.
    @State private var selectedTab = "Home"
    
    var body: some View {
        
        createTabView()
        
    }
    
    
    
    fileprivate func createTabView() -> some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom)) {
            
            TabView(selection: $selectedTab)
            {
                createHomeScreen()
                    .tag("Home")
                
                BookmarkScreen()
                    .tag("Bookmark")
                
                CartScreen()
                    .tag("Cart")
                
            }
            
            HStack(spacing: 0) {
                
                TabBarButton(title: "Home", image: "house.circle", seletectedTab: $selectedTab)
                
                Spacer(minLength: 0)
                
                TabBarButton(title: "Bookmark", image: "bookmark.circle", seletectedTab: $selectedTab)
                
                Spacer(minLength: 0)
                
                TabBarButton(title: "Cart", image: "cart.circle", seletectedTab: $selectedTab)
                
            }.padding(.vertical, 12)
            .padding(.horizontal)
            .background(Color.black)
            .clipShape(Capsule())
            .padding(.horizontal, 25)
            
            
            //ZStack
        }
        
    }
    
    
    
    fileprivate func createHomeScreen() -> some View {
        ZStack(alignment: .bottom) {
            
            HomeScreen(category: self.$selectedCategory)
            
            //ZStack
        }.fullScreenCover(isPresented: self.$presentScreeen) {
            if selectedCategory != nil{
                ProductListingScreen(category: $selectedCategory)
            }
            
        }
        .onChange(of: selectedCategory) { category in
            presentScreeen.toggle()
        }
        // End Of Function
    }
    
    
    
    
    
}


