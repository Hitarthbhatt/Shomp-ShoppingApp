//
//  ProductImageView.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI
import SDWebImageSwiftUI

struct ProductImageView: View {
    
    var imageUrl: String
    
    var animation: Namespace.ID
    var onDismissPreview = {}
    
    @State private var zoomLevel: CGFloat = 0.5
    @State private var offSet: CGSize = .zero
    
    
    var body: some View {
        WebImage(url: URL(string: imageUrl))
            .matchedGeometryEffect(id: imageUrl, in: animation)
            .scaleEffect(self.zoomLevel)
            .scaledToFill()
            .offset(self.offSet)
            .gesture(handleDragGesture())
            .gesture(handleMagnificationGesture())
            .onTapGesture(count: 2, perform: { handleDoubleTapGesture() })
            .onTapGesture(count: 1, perform: { handleSingleTapGesture() })
            .background(Color.background)
            .animation(.easeIn, value: self.zoomLevel)
            .edgesIgnoringSafeArea(.all)
    }
    
    
    
    private func handleDragGesture() -> _EndedGesture<_ChangedGesture<DragGesture>> {
        
        return DragGesture()
            .onChanged { value in
                if zoomLevel > 0.5 {
                    self.offSet = value.translation
                }
            }.onEnded { value in
                withAnimation {
                    self.offSet = .zero
                }
            }
        
    }
    
    
    
    
    private func handleMagnificationGesture() -> _EndedGesture<_ChangedGesture<MagnificationGesture>> {
        return MagnificationGesture()
            .onChanged { value in
                self.zoomLevel = value
            }.onEnded { value in
                if value < CGFloat(1) {
                    self.zoomLevel = 0.5
                }
            }
    }
    
    
    
    private func handleSingleTapGesture() {
        if self.zoomLevel == 0.5 {
            withAnimation(.spring()) {
                onDismissPreview()
            }
        }
    }
    
    
    
    private func handleDoubleTapGesture() {
        if self.zoomLevel > 0.5 {
            self.zoomLevel = 0.5
        }else {
            self.zoomLevel = 1
        }
    }
    
    
    
}

