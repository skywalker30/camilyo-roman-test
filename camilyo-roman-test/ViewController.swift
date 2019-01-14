//
//  ViewController.swift
//  camilyo-roman-test
//
//  Created by Roman on 13/01/2019.
//  Copyright © 2019 Roman. All rights reserved.
//

import UIKit


class ViewController: UITableViewController {
    
    fileprivate var cellControllers = [TableCellController]()
    fileprivate let cellControllerFactory = CellControllerFactory()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureTableView()
        displayData()
        
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellControllers.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        return cellControllers[indexPath.row].cellFromTableView(tableView, forIndexPath: indexPath)
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        cellControllers[indexPath.row].didSelectCell()
        
    }
    
}


private extension ViewController {
    
    func configureTableView() {
        
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 200
        
        
        cellControllerFactory.registerCells(on: tableView)
    }
    
    func displayData() {
        
        
        let data = FeedDataProvider.harcodedData
        
        
        cellControllers = cellControllerFactory.cellControllers(from: data)
        
        tableView.reloadData()
    }
    
}
