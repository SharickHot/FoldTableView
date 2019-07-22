//
//  Array.swift
//  FoldTableView
//
//  Created by GK on 2019/7/19.
//  Copyright © 2019 com.gk. All rights reserved.
//

import Foundation

extension Array where Element: Equatable {
    mutating func remove(object: Element?) {
        guard let anObject = object else {
            return
        }
        guard let index = firstIndex(of: anObject) else {
            return
        }
        remove(at: index)
    }
}
