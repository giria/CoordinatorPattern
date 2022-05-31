//
//  Storyboardable.swift
//  Quotes
//
//  Created by jbarrull on 28/05/2022.
//  Copyright © 2022 Code Foundry. All rights reserved.
//

import Foundation
import UIKit

protocol Storyboardable {
    static var storyboardName: String { get }
    static var storyboardBundle: Bundle { get }
    static var storyboardIdentifier: String { get }
    
    
    static func instantiate() -> Self
    
}

extension Storyboardable where Self: UIViewController {
    static var storyboardName: String {
       return "Main"
    }
    static var storyboardBundle: Bundle {
      return  .main
    }
    static var storyboardIdentifier: String {
       return String(describing: self)
    }
    
    static func instantiate() -> Self {
       guard  let viewController = UIStoryboard(name: storyboardName, bundle:  storyboardBundle).instantiateViewController(withIdentifier: storyboardIdentifier) as? Self else {
            fatalError("Canot instatiate view controlller")
        }
       return viewController
    }
    
}
