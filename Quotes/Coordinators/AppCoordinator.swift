//
//  AppCoordinator.swift
//  Quotes
//
//  Created by jbarrull on 28/05/2022.
//  Copyright © 2022 Code Foundry. All rights reserved.
//
import UIKit
import Foundation

class AppCoordinator {
    
    private let navigationController = UINavigationController()
    
    var rootViewController: UIViewController {
        return navigationController
    }
    func start() {
        showQuotes()
    }
    
    private func showQuotes() {
        let quotesViewController = QuotesViewController.instantiate()
        
        navigationController.pushViewController(quotesViewController, animated: true)
        
    }
    
    
}
