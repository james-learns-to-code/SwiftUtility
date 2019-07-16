//
//  CollectionExtension.swift
//  SwiftUtilityKit
//
//  Created by leedongseok on 16/06/2019.
//

import Foundation

public extension Collection {
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}
