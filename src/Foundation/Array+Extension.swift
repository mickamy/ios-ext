//
//  Array+Extension.swift
//  ios-ext
//
//  Created by Tetsuro Mikami on 2019/09/28.
//  Copyright © 2019 Tetsuro Mikami. All rights reserved.
//

import Foundation

public extension Array {
    var second: Element? {
        return self[safe: 1]
    }
    
    var third: Element? {
        return self[safe: 2]
    }
}
