//
//  NSObjectExtension.swift
//  SwiftUtilityKit
//
//  Created by leedongseok on 16/06/2019.
//

import Foundation

public protocol NSObjectNameable {}
public extension NSObjectNameable {
    static var name: String {
        return String(describing: self)
    }
}

extension NSObject: NSObjectNameable {}
