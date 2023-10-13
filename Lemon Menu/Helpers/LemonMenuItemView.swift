//
//  LemonMenuItemView.swift
//  Lemon Menu
//
//  Created by STARK on 12.10.2023.
//

import SwiftUI


struct LemonMenuItemView: View {
    let menu: MenuItems
    let image: Image

    var body: some View {
        VStack {
            image
                .resizable()
                .frame(height: 100)
                .cornerRadius(10)

            Text(menu.title)
                .foregroundColor(.gray)
                .font(.subheadline)
                .minimumScaleFactor(0.8)
                .lineLimit(1)
        }
    }
}


struct MenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        LemonMenuItemView(menu: Data.menus.first!, image: Image(Data.menus.first!.image))
    }
}
