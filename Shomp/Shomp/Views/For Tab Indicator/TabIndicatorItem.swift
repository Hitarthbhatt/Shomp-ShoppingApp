//
//  TabIndicatorItem.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI

struct TabIndicatorItem: View {
    
    var category: Category
    var isActive: Bool
    var animation: Namespace.ID
    
    var body: some View {
        ZStack(alignment: .center) {
            
            if isActive {
            
            RoundedRectangle(cornerRadius: 5)
                .frame(width: 80 , height: 35, alignment: .center)
                .foregroundColor(isActive ? Color.black : Color.clear)
                .matchedGeometryEffect(id: "category", in: animation)
                
            }
            
            Text(category.toString())
                .font(.system(size: 18, weight: isActive ? Font.Weight.bold : Font.Weight.light, design: Font.Design.rounded))
                .foregroundColor(isActive ? Color.white : Color.text)
                .frame(maxWidth: .infinity)
                .layoutPriority(1)
            
            
            
            //ZStack
        }
        .foregroundColor(.text)
        
        
    }
}

