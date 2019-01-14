//
//  GoogleTableCellController.swift
//  camilyo-roman-test
//
//  Created by Roman Sukner on 13/01/2019.
//  Copyright © 2019 Roman. All rights reserved.
//

import Foundation
import UIKit


class GoogleTableCellController: TableCellController {
    
    fileprivate let google: Google
    
    init(google:Google) {
        self.google = google
    }
    
    fileprivate static var cellIdentifier: String {
        //return String(describing: type(of: GoogleTableViewCell.self))
        return String(describing: GoogleTableViewCell.self)
    }
    
    static func registerCell(on tableView: UITableView) {
        tableView.register(UINib(nibName: cellIdentifier, bundle: Bundle(for: GoogleTableViewCell.self)), forCellReuseIdentifier: cellIdentifier)
    }
    
    func cellFromTableView(_ tableView: UITableView, forIndexPath indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: type(of: self).cellIdentifier, for: indexPath) as! GoogleTableViewCell
        cell.lblText.text = self.google.text
        return cell
    }
    
    func didSelectCell() {
        
    }
    
}
