//
//  MenuViewModel.swift
//  Lemon Menu
//
//  Created by STARK on 12.10.2023.
//

import SwiftUI

class MenuItemsViewModel: ObservableObject {
    @Published var food: [MenuItems] = []
    @Published var drink: [MenuItems] = []
    @Published var dessert: [MenuItems] = []
    @Published var menus: [MenuItems] = Data.menus

    func menuItems(for menuItemCategory: MenuItemsCategory) -> [MenuItems] {
        switch menuItemCategory {
        case .food:
            return createMockData(forCategory: .food)
        case .drink:
            return createMockData(forCategory: .drink)
        case .dessert:
            return createMockData(forCategory: .dessert)
        }
    }

    func selectBy(_ menuItemCategory: MenuItemsCategory) {
        menus = Data.menus
        menus = createMockData(forCategory: menuItemCategory)
    }

    func sortBy(_ sortByCriteria: SortItems) {
        menus = Data.menus
        menus = sortMenuBy(sortByCriteria)
    }

    private func createMockData(forCategory menuItemCategory: MenuItemsCategory) -> [MenuItems] {
        return menus.filter { $0.category == menuItemCategory }
    }

    private func sortMenuBy(_ sortByCriteria: SortItems) -> [MenuItems] {
        switch sortByCriteria {
        case .popular:
            return menus.sorted { $0.ordersCount > $1.ordersCount }
        case .price:
            return menus.sorted { $0.price < $1.price }
        case .alphabetic:
            return menus.sorted { $0.title < $1.title }
        }
    }
}

