//
//  UIColor+Fill.swift
//  SwiftUtilityKit
//
//  Created by dongseok lee on 2019/12/15.
//

import Foundation

public extension UIColor {
    func filledImage(frame: CGRect) -> UIImage {
        let renderer = UIGraphicsImageRenderer(size: frame.size)
        return renderer.image { context in
            set()
            context.cgContext.fill(frame)
        }
    }
}
