//
//  CaseIterable+EquatableTest.swift
//  ios-extTests
//
//  Created by Tetsuro Mikami on 2019/09/28.
//  Copyright © 2019 Tetsuro Mikami. All rights reserved.
//

import ios_ext
import UIKit
import XCTest

final class CaseIterableEquatableTest: XCTestCase {
}

extension CaseIterableEquatableTest {
    enum Test: Int, CaseIterable {
        case one, two, three
    }
    
    func test_Previous() {
        XCTAssertTrue(Test.one.previous == nil)
        XCTAssertTrue(Test.two.previous! == .one)
        XCTAssertTrue(Test.three.previous! == .two)
    }
    
    func test_Next() {
        XCTAssertTrue(Test.one.next! == .two)
        XCTAssertTrue(Test.two.next! == .three)
        XCTAssertTrue(Test.three.next == nil)
    }
}
