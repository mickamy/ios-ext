//
//  Collection+ExtensionTest.swift
//  ios-ext
//
//  Created by Tetsuro Mikami on 2019/09/29.
//  Copyright © 2019 Tetsuro Mikami. All rights reserved.
//

import ios_ext
import Foundation
import XCTest

final class CollectionExtensionTest: XCTestCase {
}

extension CollectionExtensionTest {
    func test_SafeSubscription() {
        let array = [0, 1, 2]
        XCTAssertTrue(array[safe: 0] == 0)
        XCTAssertTrue(array[safe: 1] == 1)
        XCTAssertTrue(array[safe: 2] == 2)
        XCTAssertTrue(array[safe: 3] == nil)
        XCTAssertTrue(array[safe: -1] == nil)
    }
}
