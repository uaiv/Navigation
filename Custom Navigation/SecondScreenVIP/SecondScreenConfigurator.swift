//
//  SecondScreenConfigurator.swift
//  Custom Navigation
//
//  Created by Ivan Zakharchenko on 17/10/2022.
//

import Foundation

final class SecondScreenonfigurator: BaseDelegateConfigurator {
    @discardableResult
    static func build(with viewController: SecondScreenViewController, delegate: FirstScreenDelegate?) -> SecondScreenViewController {
        let viewController = SecondScreenViewController()
        let interactor = SecondScreenInteractor()
        let presenter = SecondScreenPresenter(viewController: viewController)
        let router = SecondScreenRouter()
        
        viewController.interactor = interactor
        interactor.presenter = presenter
        viewController.router = router
        router.viewController = viewController
        router.delegate = delegate
        
        return viewController
    }
}
