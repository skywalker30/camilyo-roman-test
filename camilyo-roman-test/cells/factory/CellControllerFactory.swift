//
//  CellControllerFactory.swift
//  camilyo-roman-test
//
//  Created by Roman on 13/01/2019.
//  Copyright © 2019 Roman. All rights reserved.
//

import Foundation
import UIKit

class CellControllerFactory {
    
    func registerCells(on tableView: UITableView) {
        AppleTableCellController.registerCell(on: tableView)
        GoogleTableCellController.registerCell(on: tableView)
        YahooTableCellController.registerCell(on: tableView)
    }
    
    
    
    func cellControllers(from elements: [FeedElement], coordinator: ViewControllerCoordinator ) -> [TableCellController] {
        // Matching each type of data to the right Cell Controller is now something we only do once. Here.
        
        return elements.map { (element) in
            switch element {
            case .apple(let apple):
                return AppleTableCellController(apple: apple, coordinator: coordinator)
            case .google(let google):
                return GoogleTableCellController(google: google, coordinator: coordinator)
            case .yahoo(let yahoo):
                return YahooTableCellController(yahoo: yahoo, coordinator: coordinator)
            }
        }
    }

    
}
