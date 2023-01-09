//
//  BurgerListeSection.swift
//  Burger
//
//  Created by Alex Grazhdan on 09.01.2023.
//

import Foundation


enum ListSection {
    case sales([ListItem])
    case category([ListItem])
    case catalog([ListItem])
    
    var items : [ListItem] {
        switch self {
        case .sales(let items),
                .category(let items),
                .catalog(let items) :
            
            return items
        }
    }
    
    var count : Int {
        items.count
    }
    
    var ttile : String {
        switch self {
            
        case .sales(_):
            return ""
        case .category(_):
           return "Category"
        case .catalog(_):
            return "catalog"
        }
    }
    
}
