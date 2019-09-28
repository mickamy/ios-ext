//
//  CaseIterable+Equatable.swift
//  ios-ext
//
//  Created by Tetsuro Mikami on 2019/09/28.
//  Copyright © 2019 Tetsuro Mikami. All rights reserved.
//

import Foundation

public extension CaseIterable where Self: Equatable {
    func next(circle: Bool = false) -> Self? {
        let allCases = Self.allCases
        let me = allCases.firstIndex(of: self)!
        let next = allCases.index(after: me)
        if circle && next == allCases.endIndex {
            return allCases.first
        }
        return allCases[safe: next]
    }
    
    func previous(circle: Bool = false) -> Self? {
        let allCases = Self.allCases.reversed()
        let me = allCases.firstIndex(of: self)!
        let next = allCases.index(after: me)
        if circle && next == allCases.endIndex {
            return allCases.first
        }
        return allCases[safe: next]
    }
}

public extension Collection {
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
