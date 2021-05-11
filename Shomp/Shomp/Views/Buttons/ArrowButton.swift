//
//  ArrowButton.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI

struct ArrowButtton: View {
    
    var text: String
    var action = {}
    
    var body: some View {
        Button(action: action, label: {
            HStack {
                Image(systemName: "arrowtriangle.right.fill")
                    .font(.system(size: 10, weight: Font.Weight.light, design: Font.Design.default))
                    .foregroundColor(.text)
                
                Text(text).font(.system(size: 15, weight: Font.Weight.light, design: Font.Design.default))
                    .foregroundColor(.text)
            }
        })
    }
}
