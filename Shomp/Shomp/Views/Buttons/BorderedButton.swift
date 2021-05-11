//
//  BorderedButton.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI

struct BorderedButton: View {
    var text: String
    var action = {}

    var body: some View {
        Button(action: action, label: {
            Text(text)
                .boldFont()
                .textColor()
                .padding(.horizontal, 30)
                .padding(.vertical, 10)
                .overlay(RoundedRectangle(cornerRadius: 5).stroke(Color.black, lineWidth: 0.8))

        })
    }
}
