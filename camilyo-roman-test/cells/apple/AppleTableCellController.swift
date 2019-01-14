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
    private let coordinator: ViewControllerCoordinator
    
    init(apple:Apple, coordinator: ViewControllerCoordinator) {
        self.apple = apple
        self.coordinator = coordinator
    }
    
    fileprivate static var cellIdentifier: String {
        
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
        
        coordinator.postSelected(url: URL.init(string: "https://www.apple.com")!)
    }
    
}
