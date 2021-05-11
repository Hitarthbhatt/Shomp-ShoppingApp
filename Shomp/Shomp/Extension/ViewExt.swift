//
//  ViewExt.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI


extension View {

    
    func lightFont() -> some View {
        self.font(.system(size: 12, weight: Font.Weight.light, design: Font.Design.default))
    }
    
    func boldFont() -> some View {
        self.font(.system(size: 15, weight: Font.Weight.bold, design: Font.Design.default))
    }
    
    func textColor() -> some View {
        self.foregroundColor(.text)
    }
 
    
    func bgColor() -> some View {
        self.background(Color.background)
    }
 
}
