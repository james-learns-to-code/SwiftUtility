//
//  OptionalExtension.swift
//  Nimble
//
//  Created by leedongseok on 26/07/2019.
//

import Foundation

extension Optional {
    public func unwrapOrThrow(_ closure: @autoclosure ()-> Error) throws -> Wrapped {
        guard let value = self else {
            throw closure()
        }
        return value
    }
}
