//
//  Collection+Extension.swift
//  ios-ext
//
//  Created by Tetsuro Mikami on 2019/09/28.
//  Copyright © 2019 Tetsuro Mikami. All rights reserved.
//

import Foundation

public extension Collection {
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
