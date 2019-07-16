//
//  UICollectionViewExtension.swift
//  SwiftUtilityKit
//
//  Created by leedongseok on 16/06/2019.
//

import UIKit

extension UICollectionView {
    
    public func register(_ cellClass: AnyClass) {
        register(cellClass, forCellWithReuseIdentifier: String(describing: cellClass))
    }
    
    public func registerNib(_ cellClass: AnyClass) {
        let name = String(describing: cellClass)
        let nib = UINib(nibName: name, bundle: nil)
        register(nib, forCellWithReuseIdentifier: name)
    }
}

extension UICollectionView {
    public func isCellFullyVisible(indexPath: IndexPath) -> Bool {
        guard let cell = cellForItem(at: indexPath) else { return false }
        let relativeRect = convert(cell.frame, to: superview)
        return frame.contains(relativeRect)
    }
}
