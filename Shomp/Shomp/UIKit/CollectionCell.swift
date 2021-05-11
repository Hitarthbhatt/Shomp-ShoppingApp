//
//  CollectionCell.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import SwiftUI


class CollectionCell: UICollectionViewCell {
    
    static let reuseId: String = "CollectionCell"
    
    var viewController: UIViewController? {
        
        didSet {
            if let viewController = self.viewController {
               setupCell(viewController)
            }
        }
    }
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        if let viewController = self.viewController {
           setupCell(viewController)
            print("Working")
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupCell(_ viewController: UIViewController){
            guard let view = viewController.view else {
                return
            }
            view.translatesAutoresizingMaskIntoConstraints = false
            view.backgroundColor = .clear
            self.addSubview(view)
        
            NSLayoutConstraint.activate([
                view.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
                view.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
                view.topAnchor.constraint(equalTo: contentView.topAnchor),
                view.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
            ])
        }
    
    
    
}
