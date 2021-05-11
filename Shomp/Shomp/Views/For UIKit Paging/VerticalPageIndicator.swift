//
//  VerticalPageIndicator.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI

struct VerticalPageIndicator: View {
    
    var numberOfPages: Int = 5
    @Binding var selectedPageIndex: Int
    
    var body: some View {
        VStack {
            ForEach(0..<numberOfPages) { i in
                if i == selectedPageIndex {
                    Circle()
                        .strokeBorder(lineWidth: 1.0, antialiased: true)
                        .frame(width: 12, height: 12, alignment: .center)
                } else {
                    Circle().frame(width: 7, height: 7, alignment: .center)
                }
            }
        }.textColor()
        .animation(.easeInOut(duration: 0.5))
    }
    
}

