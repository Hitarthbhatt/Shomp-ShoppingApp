//
//  NavBarView.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI

struct NavBarView: View {
    
    var title: String
    var onReturn = {}
    var onFilter = {}
    
    var body: some View {
        
        HStack(alignment: .center) {
            
            Button(action: onReturn, label: {
                Image(systemName: "chevron.left")
                    .imageScale(.medium)
            })
            
            Spacer()
            
            Text(title)
                .font(.system(size: 18, weight: Font.Weight.semibold, design: Font.Design.default))
                .frame(maxWidth: .infinity, alignment: .center)
            
            Spacer()
            
            Button(action: onFilter, label: {
                Image(systemName: "camera.filters")
                    .imageScale(.medium)
            })
            
            //HStack
        }.padding([.horizontal, .top], 20)
        .frame(maxWidth: .infinity)
        .textColor()
        .frame(height: Sizes.screenHeight/10, alignment: .center)
        .background(Color.background)
        
        
        
    }
}

