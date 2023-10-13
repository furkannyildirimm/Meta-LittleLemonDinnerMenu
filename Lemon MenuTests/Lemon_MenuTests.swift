//
//  Lemon_MenuTests.swift
//  Lemon MenuTests
//
//  Created by STARK on 12.10.2023.
//

import XCTest
@testable import Lemon_Menu


class MenuItemsViewModelTests: XCTestCase {

    private var viewModel: MenuItemsViewModel!

    override func setUp() {
        super.setUp()

        viewModel = MenuItemsViewModel()
    }

    func testMenuItemsForFoodCategory() {
        let foodItems = viewModel.menuItems(for: .food)

        XCTAssertEqual(foodItems.count, 8)
    }

    func testMenuItemsForDrinkCategory() {
        let drinkItems = viewModel.menuItems(for: .drink)

        XCTAssertEqual(drinkItems.count, 4)
    }

    func testMenuItemsForDessertCategory() {
        let dessertItems = viewModel.menuItems(for: .dessert)

        XCTAssertEqual(dessertItems.count, 4)
    }
}
