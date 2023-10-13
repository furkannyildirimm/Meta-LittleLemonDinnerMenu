//
//  MenuItemsView.swift
//  Lemon Menu
//
//  Created by STARK on 12.10.2023.
//

import SwiftUI

struct MenuItemsView: View {
    @State private var isShowFilter = false

    @StateObject private var viewModel = MenuItemsViewModel()

    let columns = [
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16),
        GridItem(.flexible(), spacing: 16)
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                ForEach(MenuItemsCategory.allCases, id: \.self) { menuItemCategory in
                    let itemsForCategory = viewModel.menuItems(for: menuItemCategory)
                    if !itemsForCategory.isEmpty {
                        Section(
                            header: Title(title: menuItemCategory.rawValue)
                        ) {
                            LazyVGrid(columns: columns) {
                                ForEach(viewModel.menuItems(for: menuItemCategory), id: \.id) { menu in
                                    NavigationLink(
                                        destination: MenuItemDetailsView(menu: menu),
                                        label: {
                                            LemonMenuItemView(menu: menu, image: Image(menu.image))
                                        }
                                    )
                                }
                            }
                        }
                        .padding()
                    }
                }
            }
            .navigationTitle("Menu")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(
                trailing:
                    Button {
                        isShowFilter.toggle()
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    }
            )
            .sheet(isPresented: $isShowFilter) {
                MenuItemsOptionView(
                    isSheetPresented: $isShowFilter,
                    viewModel: viewModel
                )
            }
        }
    }
}

struct MenuItemsView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsView()
    }
}

