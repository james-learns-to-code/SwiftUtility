//
//  UIViewExtension.swift
//  SwiftUtilityKit
//
//  Created by leedongseok on 16/06/2019.
//

import UIKit

public protocol UIViewNibInitiable {}
public extension UIViewNibInitiable where Self: UIView {
    static func initFromNib() -> Self? {
        return Bundle.main.loadNibNamed(String(describing: self), owner: nil, options: nil)?.first as? Self
    }
}

extension UIView: UIViewNibInitiable {}

