//
//  UICollectionViewCellExtension.swift
//  SwiftUtilityKit
//
//  Created by leedongseok on 16/06/2019.
//

import UIKit

public protocol UICollectionViewCellDequeueable {}
public extension UICollectionViewCellDequeueable where Self: UICollectionViewCell {
    static func dequeue(from collectionView: UICollectionView, for indexPath: IndexPath) -> Self? {
        return collectionView.dequeueReusableCell(withReuseIdentifier: String(describing: self), for: indexPath) as? Self
    }
}

extension UICollectionViewCell: UICollectionViewCellDequeueable {}
