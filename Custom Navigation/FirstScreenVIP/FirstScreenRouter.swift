//
//  FirstScreenRouter.swift
//  Custom Navigation
//
//  Created by Ivan Zakharchenko on 17/10/2022.
//

protocol RoutingLogic: AnyObject {
    func navigate()
}

final class FirstScreenRouter{
    weak var viewController: DisplayLogic?
    weak var delegate: FirstScreenDelegate?
}

extension FirstScreenRouter: RoutingLogic {
    func navigate() {
        self.delegate?.loadSecondScreen()
    }
}
