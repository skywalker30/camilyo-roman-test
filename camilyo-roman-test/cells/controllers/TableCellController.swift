//
//  TableCellController.swift
//  camilyo-roman-test
//
//  Created by Roman on 13/01/2019.
//  Copyright © 2019 Roman. All rights reserved.
//

import Foundation
import UIKit

protocol TableCellController {
    
    static func registerCell(on tableView: UITableView)
    func cellFromTableView(_ tableView: UITableView, forIndexPath indexPath: IndexPath) -> UITableViewCell
    func didSelectCell()
}
