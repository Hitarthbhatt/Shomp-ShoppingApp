//
//  CollectionView.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI


struct CollectionView: UIViewRepresentable {
    
    
    var controllers: [UIViewController]
    @Binding var currentPage: Int
    @Binding var selectedIndex: Int?
    
    func makeUIView(context: Context) -> UICollectionView {
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.backgroundColor = .clear
        
        collectionView.register(CollectionCell.self, forCellWithReuseIdentifier: CollectionCell.reuseId)
        
        collectionView.dataSource = context.coordinator
        collectionView.delegate = context.coordinator
        
        collectionView.isPagingEnabled = true
        collectionView.alwaysBounceVertical = false
        collectionView.bounces = false
        collectionView.showsVerticalScrollIndicator = false
        layout.minimumLineSpacing = 0
        return collectionView
    }
    
    func updateUIView(_ uiView: UICollectionView, context: Context) {

    }
    
    
    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    
    
    
    
    class Coordinator: NSObject, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
        
        var parent: CollectionView
        
        init(_ parent: CollectionView) {
            self.parent = parent
        }
        
        
        func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 1
        }
        
        func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            return parent.controllers.count
        }
        
        func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionCell.reuseId, for: indexPath) as? CollectionCell {

                cell.viewController = parent.controllers[indexPath.item]
                
                return cell
            }
            
            return UICollectionViewCell()
        }
        
        
        func collectionView(_ collectionView: UICollectionView, didEndDisplaying cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
            guard let index = collectionView.indexPathsForVisibleItems.first?.item else {
                return
            }
            
            self.parent.currentPage = index
            
        }
        
        func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
            self.parent.selectedIndex = indexPath.item
        }
        
        
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
        }
        
        // Coordinator Class
    }
    
    
    
    
    
    
    
    
    
    
    
}
