//
//  SecondScreenRouter.swift
//  Custom Navigation
//
//  Created by Ivan Zakharchenko on 17/10/2022.
//

import Foundation

protocol SecondScreenRoutingLogic: AnyObject {
}

final class SecondScreenRouter {
    weak var viewController: SecondScreenViewController?
    weak var delegate: FirstScreenDelegate?
}

extension SecondScreenRouter: SecondScreenRoutingLogic {
}
