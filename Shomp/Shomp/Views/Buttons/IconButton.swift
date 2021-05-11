//
//  IconButton.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI

struct IconButton: View {
    var icon: String
    var action = {}
    
    var body: some View {
        Button(action: action, label: {
            Image(systemName: icon)
                .imageScale(.medium)
                .foregroundColor(.black)
                
        })
    }
}
