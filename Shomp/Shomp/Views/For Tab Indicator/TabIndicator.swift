//
//  TabIndicator.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI

struct TabIndicator: View {
    
    var category: Category
    var animation: Namespace.ID
    
    var body: some View {
        HStack{
            
            ForEach(0..<Category.allCases.count) { i in
                TabIndicatorItem(category: Category.allCases[i], isActive: Category.allCases[i] == category, animation: animation)
                
            }
            //HStack
        }.frame(width: Sizes.screenWidth/1.2)
        .animation(.spring())
        
        
        
    }
}
