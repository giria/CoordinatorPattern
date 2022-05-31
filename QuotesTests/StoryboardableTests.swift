//
//  QuotesTests.swift
//  QuotesTests
//
//  Created by jbarrull on 29/05/2022.
//  Copyright © 2022 Code Foundry. All rights reserved.
//

import XCTest
@testable import Quotes


class Storyboardable: XCTestCase {

    func testQuoteViewController() {
        _ = QuotesViewController.instantiate()
    }
    
    func testSettingsViewController () {
        _ = QuotesViewController.instantiate()
    }
}
