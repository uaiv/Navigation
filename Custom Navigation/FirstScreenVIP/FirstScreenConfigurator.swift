//
//  WelcomeScreenConfigurator.swift
//  Custom Navigation
//
//  Created by Ivan Zakharchenko on 17/10/2022.
//

import Foundation

final class FirstScreenConfigurator: BaseDelegateConfigurator {
    @discardableResult
    static func build(
        with viewController: FirstScreenViewController,
        delegate: FirstScreenDelegate?
    ) -> FirstScreenViewController {
        let presenter = FirstScreenPresenter()
        let interactor = FirstScreenInteractor()
        let router = FirstScreenRouter()
        
        interactor.presenter = presenter
        presenter.viewController = viewController
        viewController.interactor = interactor
        viewController.router = router
        router.viewController = viewController
        router.delegate = delegate
        
        return viewController
    }
}
