//
//  UIColor.swift
//  SwiftUtilityKit
//
//  Created by leedongseok on 16/06/2019.
//

import UIKit

extension UIColor {
    
    convenience public init(hex: UInt32, alpha: CGFloat = 1.0) {
        let red = CGFloat((hex & 0xFF0000) >> 16) / 256.0
        let green = CGFloat((hex & 0xFF00) >> 8) / 256.0
        let blue = CGFloat((hex & 0xFF)) / 256.0

        self.init(red: red, green: green, blue: blue, alpha: alpha)
    }
    
    public var inversed: UIColor? {
        var r, g, b, a: CGFloat; r=0;g=0;b=0;a=0
        
        if getRed(&r, green: &g, blue: &b, alpha: &a) {
            return UIColor(red: 1-r, green: 1-g, blue: 1-b, alpha: a)
        }
        return nil
    }
}
