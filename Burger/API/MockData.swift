//
//  MockData.swift
//  Burger
//
//  Created by Alex Grazhdan on 09.01.2023.
//

import Foundation

struct MockData {
    
    static let shared = MockData()
    
    private let salas : ListSection = {
        .sales([.init(title: "", image: "salesbirger"),
                .init(title: "", image: "salesWok"),
                .init(title: "", image: "salespizza")
               ])
    }()
    
    private let category : ListSection = {
        .category([.init(title: "Wok", image: "categoryWok"),
                   .init(title: "Burger", image: "categoryBurger"),
                   .init(title: "HotDog", image: "categoryHotDog"),
                   .init(title: "Pizza", image: "categoryPizza"),
                   .init(title: "Taco", image: "categoryTaco"),
                   .init(title: "Chicken", image: "categoryChickan")])
    }()
    
    private let catalog : ListSection = {
        .catalog([.init(title: "", image: "burger1"),
                  .init(title: "", image: "burger2"),
                  .init(title: "", image: "burger3")])
    }()
    
     var pageData : [ListSection] {
        [salas, category, catalog]
    }
    
}
