//
//  CustomSheet.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI

struct CustomSheet<Content: View>: View {
    
    enum SheetState {
        case expanded, folded
    }
    
    
    @State private var yOffset: CGFloat = Sizes.screenHeight
    @State private var sheetState: SheetState = .folded
    
    
    @Binding var progress: CGFloat
    
    var foldedHeight: CGFloat
    var expandedHeight: CGFloat
    
    
    var content: (() -> Content)
    
    
    init(progress: Binding<CGFloat>, foldedHeight: CGFloat, expandedHeight: CGFloat, @ViewBuilder content: @escaping (() -> Content)) {
        self._progress = progress
        self.content = content
        self.foldedHeight = foldedHeight
        self.expandedHeight = expandedHeight
    }
    
    
    var body: some View {
        createContent().frame( maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
            .onAppear(perform: {
                yOffset = deltaHeight()
            })
    }
    
    
    
    
    fileprivate func createContent() -> some View {
        Color.background
            .overlay(content(), alignment: .top)
            .cornerRadius(10)
            .frame(height: expandedHeight, alignment: .bottom)
            .offset(x: 0, y: yOffset)
            .gesture(
                DragGesture().onChanged({ drag in
                    handleOnDrag(drag)
                }).onEnded({ drag in
                    handleOnEnded(drag)
                })
            )
            .animation(.easeInOut, value: self.sheetState)
    }
    
    
    
    private func deltaHeight() -> CGFloat {
        expandedHeight - foldedHeight
    }
    
    
    private func handleOnDrag(_ drag: DragGesture.Value) {
        
        self.yOffset = self.sheetState == .expanded ? max(0, drag.translation.height) : min(deltaHeight(), drag.location.y)
        
        self.progress = yOffset / deltaHeight()
        
    }
    
    
    private func handleOnEnded(_ drag: _ChangedGesture<DragGesture>.Value) {
        switch sheetState {
            case .expanded:
                resetValues(for: drag.translation.height > foldedHeight  ? .folded : .expanded)
            case .folded:
                resetValues(for: abs(drag.location.y) < deltaHeight()  ? .expanded : .folded)
        }
    }
    
    
    private func resetValues(for state: SheetState) {
        
        self.yOffset = state == .folded ? deltaHeight() : 0
        self.sheetState = state
        self.progress = state == .folded ? 1 : 0
        
    }
    
    
    
}


