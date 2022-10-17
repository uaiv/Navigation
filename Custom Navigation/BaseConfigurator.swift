//
//  BaseConfigurator.swift
//  Custom Navigation
//
//  Created by Ivan Zakharchenko on 17/10/2022.
//

import UIKit

protocol BaseConfigurator {
    associatedtype ViewController: UIViewController
    
    @discardableResult static func build(with viewController: ViewController) -> ViewController
}

protocol BaseDelegateConfigurator {
    associatedtype ViewController: UIViewController
    associatedtype Delegate
    
    @discardableResult static func build(with viewController: ViewController, delegate: Delegate?) -> ViewController
}
