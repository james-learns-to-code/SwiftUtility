//
//  NSObject+Buildable.swift
//  SwiftUtilityKit
//
//  Created by dongseok lee on 2019/12/15.
//

import Foundation

public protocol Buildable { }
public extension Buildable where Self: AnyObject {
    func with<T>(_ property: ReferenceWritableKeyPath<Self, T>, set value: T) -> Self {
        self[keyPath: property] = value
        return self
    }
}

extension NSObject: Buildable { }
