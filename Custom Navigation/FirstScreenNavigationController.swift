//
//  WelcomeScreenNavigationController.swift
//  Custom Navigation
//
//  Created by Ivan Zakharchenko on 17/10/2022.
//

import UIKit
import SnapKit
import RxSwift
import RxCocoa

protocol FirstScreenDelegate: AnyObject {
    func loadSecondScreen()
}

final class FirstScreenNavigationController: CustomNavigationController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.loadWelcomeScreen()
    }
    
    // MARK: - Methods
    private func loadWelcomeScreen() {
        let firstScreenVC = FirstScreenConfigurator.build(
            with: FirstScreenViewController(),
            delegate: self
        )
        self.loadController(with: firstScreenVC)
    }
}

// MARK: - FirstScreenDelegate
extension FirstScreenNavigationController: FirstScreenDelegate {
    func loadSecondScreen() {
        let secondScreenVC = FirstScreenConfigurator.build(with: FirstScreenViewController(), delegate: self)
        self.loadController(with: secondScreenVC)
    }
    
}
