//
//  MenuItems.swift
//  Lemon Menu
//
//  Created by STARK on 12.10.2023.
//

import Foundation

protocol MenuItemProtocol {
    var id: UUID { get }
    var price: Double { get }
    var title: String { get }
    var category: MenuItemsCategory { get }
    var ordersCount: Int { get set }
    var ingredient: [Ingredient] { get set }
}

struct MenuItems: MenuItemProtocol {
    
    var id: UUID
    
    var price: Double
    
    var title: String
    
    var category: MenuItemsCategory
    
    var ordersCount: Int
    
    var ingredient: [Ingredient]
    
    var image: String

}
