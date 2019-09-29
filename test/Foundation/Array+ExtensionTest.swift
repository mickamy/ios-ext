//
//  Array+ExtensionTest.swift
//  ios-extTests
//
//  Created by Tetsuro Mikami on 2019/09/29.
//  Copyright © 2019 Tetsuro Mikami. All rights reserved.
//

import ios_ext
import Foundation
import XCTest

final class ArrayExtensionTest: XCTestCase {
}

extension ArrayExtensionTest {
    func test_Second() {
        let array = [0, 1, 2]
        XCTAssertTrue(array.second == 1)
    }
    
    func test_Third() {
        let array = [0, 1, 2]
        XCTAssertTrue(array.third == 2)
    }
}
