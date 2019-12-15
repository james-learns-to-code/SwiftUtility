//
//  Identifiable.swift
//  SwiftUtilityKit
//
//  Created by dongseok lee on 2019/12/15.
//

import Foundation

public protocol Identifiable: Equatable {
    associatedtype ID: Equatable
    static var idKeyPath: KeyPath<Self, ID> { get }
}

public extension Identifiable {
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs[keyPath: Self.idKeyPath] == rhs[keyPath: Self.idKeyPath]
    }
}
