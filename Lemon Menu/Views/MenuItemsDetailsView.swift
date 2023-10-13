//
//  MenuItemsDetailsView.swift
//  Lemon Menu
//
//  Created by STARK on 12.10.2023.
//

import SwiftUI

struct MenuItemDetailsView: View {
    
    let menu: MenuItems
    
    var body: some View {
        ScrollView {
            Text(menu.title)
                .font(.title)
                .fontWeight(.bold)
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Image("LittleLemonLogo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .padding(.horizontal, 30)
            
            Text("Price:")
                .fontWeight(.bold)
            Text(String(format: "$%.2f", menu.price))
            
            Text("Ordered:")
                .fontWeight(.bold)
            Text("\(menu.ordersCount)")
            
            Text("Ingredients:")
                .fontWeight(.bold)

            ForEach(menu.ingredient, id: \.self) { ingredient in
                Text(ingredient.rawValue)
            }
        }
        .padding(.horizontal, 32)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct MenuItemDetailsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemDetailsView(menu: Data.menus.first!)
    }
}
