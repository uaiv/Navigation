//
//  FirstScreenPresenter.swift
//  Custom Navigation
//
//  Created by Ivan Zakharchenko on 17/10/2022.
//

import Foundation

protocol PresentationLogic {
    func presentInitialData()
}

final class FirstScreenPresenter {
    weak var viewController: DisplayLogic?
}

extension FirstScreenPresenter: PresentationLogic {
    func presentInitialData() {
        self.viewController?.displayData()
    }
}
