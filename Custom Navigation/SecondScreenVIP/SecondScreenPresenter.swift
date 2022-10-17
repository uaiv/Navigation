//
//  SecondScreenPresenter.swift
//  Custom Navigation
//
//  Created by Ivan Zakharchenko on 17/10/2022.
//

import UIKit
import RxSwift
import RxCocoa
import RxDataSources

protocol SecondScreenPresenterOutput: AnyObject {
}

final class SecondScreenPresenter {
    weak var viewController: SecondScreenPresenterOutput?
    init(viewController: SecondScreenPresenterOutput) {
        self.viewController = viewController
    }
}

extension SecondScreenPresenter: SecondScreenInteractorOutput {
}
