//
//  CleanNavBar.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI

struct ClearNavBar: View {
    
    var onDismiss = {}
    
    var body: some View {
        
        HStack {
            
            Button(action: onDismiss, label: {
                Image(systemName: "chevron.left")
                    .imageScale(.medium)
                    .foregroundColor(.black)
                    .padding(10)
                    .background(Color.white)
                    .clipShape(Circle())
                    .shadow(color: Color.black.opacity(0.5), radius: 2, x: 1, y: 1)
                    
            })
            
            Spacer()
            
            
            Button(action: {}, label: {
                Image(systemName: "square.and.arrow.up")
                    .imageScale(.medium)
                    .foregroundColor(.black)
                    .padding(10)
                    .background(Color.white)
                    .clipShape(Circle())
                    .shadow(color: Color.black.opacity(0.5), radius: 2, x: 1, y: 1)
                    
            })
            
            
            //HStack
        }
        .padding(.horizontal, 20)
        .frame(height: UIScreen.main.bounds.width * 0.22, alignment: .bottom)
        .background(Color.background.opacity(0))
        .edgesIgnoringSafeArea(.top)
        
        
        
    }
}


