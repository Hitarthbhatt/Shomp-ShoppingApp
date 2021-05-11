//
//  Category.swift
//  Shomp
//
//  Created by Hitarth on 27/04/21.
//

import Foundation


enum Category : Int, CaseIterable {
    case men = 0
    case women = 1
    case kids = 2
    
    private var cases: [String]  {
        ["Men", "Women", "Kids"]
    }
    
    func toString() -> String {
        cases[self.rawValue]
    }
}
