//
//  ArrayExtension.swift
//  SwiftUtilityKit
//
//  Created by leedongseok on 16/06/2019.
//

import Foundation

public extension Array {
    
    subscript(safe range: Range<Index>) -> ArraySlice<Element> {
        return self[Swift.min(range.lowerBound, endIndex)..<Swift.min(range.upperBound, endIndex)]
    }
    
    @discardableResult
    mutating func removeFirstIfExist() -> Element? {
        return count > 0 ? removeFirst() : nil
    }
    
    @discardableResult
    mutating func removeLastIfExist() -> Element? {
        return count > 0 ? removeLast() : nil
    }
}

