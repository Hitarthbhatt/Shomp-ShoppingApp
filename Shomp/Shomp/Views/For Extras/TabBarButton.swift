//
//  TabBarButton.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI

struct TabBarButton: View {
    
    var title: String
    var image: String
    
    @Binding var seletectedTab: String
    
    var body: some View {
        
        Button(action: {
            
            withAnimation(.spring()) {
                seletectedTab = title
            }
            
        }, label: {
            
            HStack {
                
                Image(systemName: image)
                    .renderingMode(.template)
                    .imageScale(.large)
                    .foregroundColor(.white)
                    
                if seletectedTab == title {
                    Text(title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                }
                
                
                //HStack
            }.padding(.vertical, 10)
            .padding(.horizontal)
            .background(Color.white.opacity(self.seletectedTab == title ? 0.1 : 0))
            .clipShape(Capsule())
            //Button
        })
        
        
    }
    
    
    
}

