//
//  UIViewControllerExtension.swift
//  SwiftUtilityKit
//
//  Created by leedongseok on 16/06/2019.
//

import UIKit

public protocol UIViewControllerNibInitiable {}
public extension UIViewControllerNibInitiable where Self: UIViewController {
    static func initFromNib() -> Self? {
        return Self(nibName: String(describing: self), bundle: nil)
    }
}

extension UIViewController: UIViewControllerNibInitiable {}
