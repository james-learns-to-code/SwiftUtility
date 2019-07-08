//
//  UITableViewCellExtension.swift
//  SwiftUtilityKit
//
//  Created by leedongseok on 16/06/2019.
//

import UIKit

public protocol UITableViewCellDequeueable {}
public extension UITableViewCellDequeueable where Self: UITableViewCell {
    static func dequeue(from tableView: UITableView, for indexPath: IndexPath) -> Self? {
        return tableView.dequeueReusableCell(withIdentifier: String(describing: self), for: indexPath) as? Self
    }
}

extension UITableViewCell: UITableViewCellDequeueable {}
