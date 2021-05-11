//
//  Tab.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import Foundation


enum Tab: Int, CaseIterable {
    case Home = 0
    case Bookmark = 1
    case Cart = 2
    
    private var cases: [String]  {
        ["Home", "Bookmark", "Cart"]
    }
    
    func toString() -> String {
        cases[self.rawValue]
    }
    
    
}
