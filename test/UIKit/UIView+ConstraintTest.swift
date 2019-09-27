//
//  UIView+ConstraintTest.swift
//  ios-extTests
//
//  Created by Tetsuro Mikami on 2019/09/28.
//  Copyright © 2019 Tetsuro Mikami. All rights reserved.
//

import ios_ext
import UIKit
import XCTest

final class UIViewConstraintTest: XCTestCase {
}

extension UIViewConstraintTest {
    
    func test_UIView_LeftConstraint() {
        let superview = UIView()
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        superview.addSubview(view)
        let expected = view.leftAnchor.constraint(equalTo: superview.leftAnchor)
        NSLayoutConstraint.activate([expected])
        view.addEachConstraints(to: superview)
        guard let tested = view.leftConstraint else { fatalError() }
        XCTAssertEqual(tested, expected)
    }
    
    func test_UIView_RightConstraint() {
        let superview = UIView()
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        superview.addSubview(view)
        let expected = view.rightAnchor.constraint(equalTo: superview.rightAnchor)
        NSLayoutConstraint.activate([expected])
        view.addEachConstraints(to: superview)
        guard let tested = view.rightConstraint else { fatalError() }
        XCTAssertEqual(tested, expected)
    }
    
    func test_UIView_TopConstraint() {
        let superview = UIView()
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        superview.addSubview(view)
        let expected = view.topAnchor.constraint(equalTo: superview.topAnchor)
        NSLayoutConstraint.activate([expected])
        view.addEachConstraints(to: superview)
        guard let tested = view.topConstraint else { fatalError() }
        XCTAssertEqual(tested, expected)
    }
    
    
    func test_UIView_BottomConstraint() {
        let superview = UIView()
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        superview.addSubview(view)
        let expected = view.bottomAnchor.constraint(equalTo: superview.bottomAnchor)
        NSLayoutConstraint.activate([expected])
        view.addEachConstraints(to: superview)
        guard let tested = view.bottomConstraint else { fatalError() }
        XCTAssertEqual(tested, expected)
    }
    
    func test_UIView_LeadingConstraint() {
        let superview = UIView()
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        superview.addSubview(view)
        let expected = view.leadingAnchor.constraint(equalTo: superview.leadingAnchor)
        NSLayoutConstraint.activate([expected])
        view.addEachConstraints(to: superview)
        guard let tested = view.leadingConstraint else { fatalError() }
        XCTAssertEqual(tested, expected)
    }
    
    func test_UIView_TrailingConstraint() {
        let superview = UIView()
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        superview.addSubview(view)
        let expected = view.trailingAnchor.constraint(equalTo: superview.trailingAnchor)
        NSLayoutConstraint.activate([expected])
        view.addEachConstraints(to: superview)
        guard let tested = view.trailingConstraint else { fatalError() }
        XCTAssertEqual(tested, expected)
    }
    
    func test_UIView_WidthConstraint() {
        let superview = UIView()
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        superview.addSubview(view)
        let expected = view.widthAnchor.constraint(equalTo: superview.widthAnchor)
        NSLayoutConstraint.activate([expected])
        view.addEachConstraints(to: superview)
        guard let tested = view.widthConstraint else { fatalError() }
        XCTAssertEqual(tested, expected)
    }
    
    func test_UIView_HeightConstraint() {
        let superview = UIView()
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        superview.addSubview(view)
        let expected = view.heightAnchor.constraint(equalTo: superview.heightAnchor)
        NSLayoutConstraint.activate([expected])
        view.addEachConstraints(to: superview)
        guard let tested = view.heightConstraint else { fatalError() }
        XCTAssertEqual(tested, expected)
    }
    
    func test_UIView_CenterXConstraint() {
        let superview = UIView()
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        superview.addSubview(view)
        let expected = view.centerXAnchor.constraint(equalTo: superview.centerXAnchor)
        NSLayoutConstraint.activate([expected])
        view.addEachConstraints(to: superview)
        guard let tested = view.centerXConstraint else { fatalError() }
        XCTAssertEqual(tested, expected)
    }
    
    func test_UIView_CenterYConstraint() {
        let superview = UIView()
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        superview.addSubview(view)
        let expected = view.centerYAnchor.constraint(equalTo: superview.centerYAnchor)
        NSLayoutConstraint.activate([expected])
        view.addEachConstraints(to: superview)
        guard let tested = view.centerYConstraint else { fatalError() }
        XCTAssertEqual(tested, expected)
    }
    
    func test_UIView_LastBaselineConstraint() {
        let superview = UIView()
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        superview.addSubview(view)
        let expected = view.lastBaselineAnchor.constraint(equalTo: superview.lastBaselineAnchor)
        NSLayoutConstraint.activate([expected])
        view.addEachConstraints(to: superview)
        guard let tested = view.lastBaselineConstraint else { fatalError() }
        XCTAssertEqual(tested, expected)
    }
}

private extension UIView {
    func addEachConstraints(to superview: UIView) {
        var constraints = [NSLayoutConstraint]()
        constraints.append(contentsOf: xAxisAnchors.map { targetAnchor in
            superview.xAxisAnchors.map { superviewAnchor in
                targetAnchor.constraint(equalTo: superviewAnchor)
            }
            }.joined())
        constraints.append(contentsOf: leftRightAnchors.map { targetAnchor in
            superview.leftRightAnchors.map { superviewAnchor in
                targetAnchor.constraint(equalTo: superviewAnchor)
            }
            }.joined())
        constraints.append(contentsOf: yAxisAnchors.map { targetAnchor in
            superview.yAxisAnchors.compactMap { superviewAnchor in
                targetAnchor.constraint(equalTo: superviewAnchor)
            }
            }.joined())
        constraints.append(contentsOf: dimensionAnchors.map { targetAnchor in
            superview.dimensionAnchors.compactMap { superviewAnchor in
                targetAnchor.constraint(equalTo: superviewAnchor)
            }
            }.joined())
        NSLayoutConstraint.activate(constraints)
    }
}
