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
    
    func test_Next_Without_Circle() {
        XCTAssertTrue(Test.one.next(circle: false) == .two)
        XCTAssertTrue(Test.two.next(circle: false) == .three)
        XCTAssertTrue(Test.three.next(circle: false) == nil)
    }
    
    func test_Next_With_Circle() {
        XCTAssertTrue(Test.one.next(circle: true) == .two)
        XCTAssertTrue(Test.two.next(circle: true) == .three)
        XCTAssertTrue(Test.three.next(circle: true) == .one)
    }
    
    func test_Previous_Without_Circle() {
        XCTAssertTrue(Test.one.previous(circle: false) == nil)
        XCTAssertTrue(Test.two.previous(circle: false) == .one)
        XCTAssertTrue(Test.three.previous(circle: false) == .two)
    }
    
    func test_Previous_With_Circle() {
        XCTAssertTrue(Test.one.previous(circle: true) == .three)
        XCTAssertTrue(Test.two.previous(circle: true) == .one)
        XCTAssertTrue(Test.three.previous(circle: true) == .two)
    }
}
