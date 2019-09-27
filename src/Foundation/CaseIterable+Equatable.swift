//
//  CaseIterable+Equatable.swift
//  ios-ext
//
//  Created by Tetsuro Mikami on 2019/09/28.
//  Copyright © 2019 Tetsuro Mikami. All rights reserved.
//

import Foundation

public extension CaseIterable where Self.AllCases.Element: Equatable {
    var next: Self? {
        var next: Bool = false
        for item in Self.allCases {
            if next { return item }
            next = item == self
        }
        return nil
    }
    
    var previous: Self? {
        var previous: Bool = false
        for item in Self.allCases.reversed() {
            if previous { return item }
            previous = item == self
        }
        return nil
    }
}
