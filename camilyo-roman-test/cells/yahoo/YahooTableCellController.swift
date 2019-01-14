//
//  YahooTableCellController.swift
//  camilyo-roman-test
//
//  Created by Roman Sukner on 13/01/2019.
//  Copyright © 2019 Roman. All rights reserved.
//

import Foundation
import UIKit


class YahooTableCellController: TableCellController {
    
    fileprivate let yahoo: Yahoo
    private let coordinator: ViewControllerCoordinator
    let urlPath = "https://www.yahoo.com"
    
    init(yahoo:Yahoo, coordinator: ViewControllerCoordinator) {
        self.yahoo = yahoo
        self.coordinator = coordinator
    }

    fileprivate static var cellIdentifier: String {

        return String(describing: YahooTableViewCell.self)
    }
    
    static func registerCell(on tableView: UITableView) {
        tableView.register(UINib(nibName: cellIdentifier, bundle: Bundle(for: YahooTableViewCell.self)), forCellReuseIdentifier: cellIdentifier)
    }
    
    func cellFromTableView(_ tableView: UITableView, forIndexPath indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: type(of: self).cellIdentifier, for: indexPath) as! YahooTableViewCell
        cell.lblText.text = self.yahoo.text
        return cell
    }
    
    func didSelectCell() {
        
        coordinator.postSelected(url: URL.init(string: urlPath)!)
    }
    
}
