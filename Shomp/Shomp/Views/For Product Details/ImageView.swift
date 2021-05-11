//
//  ImageView.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct ImageView: View {
    
    var image: String
    private let screenWidth = Sizes.screenWidth
    private let screenHeight = Sizes.screenHeight
    var animation: Namespace.ID
    
    
    var body: some View {
        
        URL(string: image).map {
            WebImage(url: $0)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .matchedGeometryEffect(id: $0, in: animation)
                .frame(width: screenWidth, height: screenHeight)
        }
        
        
    }
}

