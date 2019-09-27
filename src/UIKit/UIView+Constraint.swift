//
//  UIView+Constraint.swift
//  ios-ext
//
//  Created by Tetsuro Mikami on 2019/09/28.
//  Copyright © 2019 Tetsuro Mikami. All rights reserved.
//

import UIKit

public extension UIView {
    
    var xAxisAnchors: [NSLayoutXAxisAnchor] {
        return [
            leadingAnchor,
            trailingAnchor,
            centerXAnchor,
        ]
    }
    
    var leftRightAnchors: [NSLayoutXAxisAnchor] {
        return [
            leftAnchor,
            rightAnchor,
        ]
    }
    
    var yAxisAnchors: [NSLayoutYAxisAnchor] {
        return [
            topAnchor,
            bottomAnchor,
            centerYAnchor,
            firstBaselineAnchor,
            lastBaselineAnchor,
        ]
    }
    
    var dimensionAnchors: [NSLayoutDimension] {
        return [
            widthAnchor,
            heightAnchor,
        ]
    }
    
    private var allConstraints: [NSLayoutConstraint] {
        var allConstraints = constraints
        guard let superview = superview else {
            return allConstraints
        }
        allConstraints.append(contentsOf: superview.constraints)
        return allConstraints
    }
    
    private func firstConstraint(attribute: NSLayoutConstraint.Attribute) -> NSLayoutConstraint? {
        return allConstraints.first(where: {
            (($0.firstItem as? UIView == self) && $0.firstAttribute == attribute)
                || (($0.secondItem as? UIView == self) && $0.secondAttribute == attribute)
        })
    }
    
    var leftConstraint: NSLayoutConstraint? {
        return firstConstraint(attribute: .left)
    }
    
    var rightConstraint: NSLayoutConstraint? {
        return firstConstraint(attribute: .right)
    }
    
    var topConstraint: NSLayoutConstraint? {
        return firstConstraint(attribute: .top)
    }
    
    var bottomConstraint: NSLayoutConstraint? {
        return firstConstraint(attribute: .bottom)
    }
    
    var leadingConstraint: NSLayoutConstraint? {
        return firstConstraint(attribute: .leading)
    }
    
    var trailingConstraint: NSLayoutConstraint? {
        return firstConstraint(attribute: .trailing)
    }
    
    var widthConstraint: NSLayoutConstraint? {
        return firstConstraint(attribute: .width)
    }
    
    var heightConstraint: NSLayoutConstraint? {
        return firstConstraint(attribute: .height)
    }
    
    var centerXConstraint: NSLayoutConstraint? {
        return firstConstraint(attribute: .centerX)
    }
    
    var centerYConstraint: NSLayoutConstraint? {
        return firstConstraint(attribute: .centerY)
    }
    
    var lastBaselineConstraint: NSLayoutConstraint? {
        return firstConstraint(attribute: .lastBaseline)
    }
    
    var firstBaselineConstraint: NSLayoutConstraint? {
        return firstConstraint(attribute: .firstBaseline)
    }
}
