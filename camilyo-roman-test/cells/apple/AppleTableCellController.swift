//
//  AppleTableCellController.swift
//  camilyo-roman-test
//
//  Created by Roman on 13/01/2019.
//  Copyright © 2019 Roman. All rights reserved.
//

import Foundation
import UIKit


class AppleTableCellController: TableCellController {
    
    fileprivate let apple: Apple
    
    init(apple:Apple) {
        self.apple = apple
    }
    
    fileprivate static var cellIdentifier: String {
        //return String(describing: type(of: AppleTableViewCell.self))
        return String(describing: AppleTableViewCell.self)
    }
    
    static func registerCell(on tableView: UITableView) {
        tableView.register(UINib(nibName: cellIdentifier, bundle: Bundle(for: AppleTableViewCell.self)), forCellReuseIdentifier: cellIdentifier)
    }
    
    func cellFromTableView(_ tableView: UITableView, forIndexPath indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: type(of: self).cellIdentifier, for: indexPath) as! AppleTableViewCell
        cell.lblText.text = self.apple.text
        return cell
    }
    
    func didSelectCell() {
       
    }
    
}
