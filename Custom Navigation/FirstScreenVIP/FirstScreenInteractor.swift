//
//  FirstScreenInteractor.swift
//  Custom Navigation
//
//  Created by Ivan Zakharchenko on 17/10/2022.
//

import Foundation

protocol BusinessLogic {
    func presentInitialData()
}

final class FirstScreenInteractor {
    var presenter: PresentationLogic?
}

extension FirstScreenInteractor: BusinessLogic {
    func presentInitialData() {
        presenter?.presentInitialData()
    }
}
