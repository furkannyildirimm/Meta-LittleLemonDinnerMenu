//
//  Data.swift
//  Lemon Menu
//
//  Created by STARK on 12.10.2023.
//

import Foundation

struct Data {
    static var menus: [MenuItems] = [
        MenuItems(id: UUID(), price: 12.99, title: "Grilled Salmon with Lemon Butter Sauce", category: .food, ordersCount: 0, ingredient: [.salmon, .lemon, .butter], image: "lahmacun"),
        MenuItems(id: UUID(), price: 10.99, title: "Chicken Tikka Masala", category: .food, ordersCount: 2, ingredient: [.chicken, .tomatoSauce, .spices], image: "lahmacun"),
        MenuItems(id: UUID(), price: 14.99, title: "New York Strip Steak with Mashed Potatoes and Asparagus", category: .food, ordersCount: 4, ingredient: [.beef, .mashedPotatoes, .asparagus], image: "lahmacun"),
        MenuItems(id: UUID(), price: 16.99, title: "Lobster Roll with French Fries", category: .food, ordersCount: 6, ingredient: [.lobster, .frenchFries], image: "lahmacun"),
        MenuItems(id: UUID(), price: 18.99, title: "Filet Mignon with Truffle Sauce", category: .food, ordersCount: 8, ingredient: [.beef, .truffleSauce], image: "lahmacun"),
        MenuItems(id: UUID(), price: 5.99, title: "House Salad", category: .food, ordersCount: 10, ingredient: [.lettuce, .tomatoSauce, .onion], image: "lahmacun"),
        MenuItems(id: UUID(), price: 6.99, title: "Caesar Salad", category: .food, ordersCount: 11, ingredient: [.romaineLettuce, .parmesanCheese, .caesarDressing], image: "lahmacun"),
        MenuItems(id: UUID(), price: 7.99, title: "French Onion Soup", category: .food, ordersCount: 9, ingredient: [.beefBroth, .onion, .gruyereCheese], image: "lahmacun"),

        MenuItems(id: UUID(), price: 4.99, title: "Chocolate Lava Cake", category: .dessert, ordersCount: 11, ingredient: [.chocolate, .vanillaIceCream], image: "baklava"),
        MenuItems(id: UUID(), price: 5.99, title: "Tiramisu", category: .dessert, ordersCount: 14, ingredient: [.ladyfingers, .coffee, .cocoaPowder], image: "baklava"),
        MenuItems(id: UUID(), price: 6.99, title: "New York Cheesecake", category: .dessert, ordersCount: 11, ingredient: [.grahamCrackerCrust, .creamCheese, .sugar, .eggs, .vanilla], image: "baklava"),
        MenuItems(id: UUID(), price: 7.99, title: "Apple Pie", category: .dessert, ordersCount: 12, ingredient: [.apple, .pieCrust, .sugar, .cinnamon, .nutmeg], image: "baklava"),
        
        MenuItems(id: UUID(), price: 3.99, title: "Ice Tea", category: .drink, ordersCount: 1, ingredient: [.lettuce], image: "ayran"),
        MenuItems(id: UUID(), price: 4.99, title: "Coca-Cola", category: .drink, ordersCount: 5, ingredient: [.tomatoSauce], image: "ayran"),
        MenuItems(id: UUID(), price: 2.99, title: "Orange Juice", category: .drink, ordersCount: 7, ingredient: [.carrot], image: "ayran"),
        MenuItems(id: UUID(), price: 3.49, title: "Coffee", category: .drink, ordersCount: 8, ingredient: [.coffee], image: "ayran"),
    ]
}
