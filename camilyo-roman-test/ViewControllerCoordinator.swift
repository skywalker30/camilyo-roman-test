//
//  ViewControllerCoordinator.swift
//  camilyo-roman-test
//
//  Created by Roman on 14/01/2019.
//  Copyright © 2019 Roman. All rights reserved.
//


import Foundation
import UIKit


class ViewControllerCoordinator {
    
    private weak var viewController: ViewController?
    
    init(viewController: ViewController?) {
        self.viewController = viewController
    }
    
    func postSelected(url: URL) {
    
        
        UIApplication.shared.open(url, options: [:])
        
    }

}
