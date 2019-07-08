//
//  ViewController.swift
//  SwiftUtility
//
//  Created by banggaoo on 06/16/2019.
//  Copyright (c) 2019 banggaoo. All rights reserved.
//

import UIKit
import SwiftUtilityKit

class ViewController: UIViewController {

    private func test() {
        
        UIButton.impact.impactOccurred()
        UITableView().register(UITableViewCell.self)
        UITableView().registerNib(UITableViewCell.self)
        UITableView().isCellFullyVisible(indexPath: IndexPath(row: 0, section: 0))
        UITableViewCell.dequeue(from: UITableView(), for: IndexPath(row: 0, section: 0))
        UICollectionView().register(UICollectionViewCell.self)
        UICollectionView().registerNib(UICollectionViewCell.self)
        UICollectionView().isCellFullyVisible(indexPath: IndexPath(row: 0, section: 0))
        UICollectionViewCell.dequeue(from: UICollectionView(), for: IndexPath(row: 0, section: 0))
        UIView.initFromNib()
        UIViewController.initFromNib()
        NSObject.name
        
        let array = [10, 20, 30]
        array[safe: 3]
        array[safe: 1..<2]
        
        UIColor(hex: 0xffffff).inversed
        
    }
}

