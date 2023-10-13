//
//  MenuItemsOptionView.swift
//  Lemon Menu
//
//  Created by STARK on 12.10.2023.
//

import SwiftUI

struct MenuItemsOptionView: View {
    
    @Binding var isSheetPresented: Bool
    let viewModel: MenuItemsViewModel
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("SELECTED CATEGORIES")) {
                    ForEach(MenuItemsCategory.allCases, id: \.self) { category in
                        Text(category.rawValue)
                            .onTapGesture {
                                viewModel.selectBy(category)
                                isSheetPresented = false
                            }
                    }
                }
                
                Section(header: Text("SORT BY")) {
                    ForEach(SortItems.allCases, id: \.self) { sortBy in
                        Text(sortBy.rawValue)
                            .onTapGesture {
                                viewModel.sortBy(sortBy)
                                isSheetPresented = false
                            }
                    }
                }
            }
            .navigationTitle("Filter")
            .navigationBarTitleDisplayMode(.large)
            .navigationBarItems(
                trailing:
                    Button {
                        isSheetPresented = false
                    } label: {
                        Text("Done")
                    }
            )
        }
    }
}

struct MenuItemsOptionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuItemsOptionView(
            isSheetPresented: .constant(true),
            viewModel: MenuItemsViewModel()
        )
    }
}
