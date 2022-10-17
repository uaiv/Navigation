//
//  SecondScreenInteractor.swift
//  Custom Navigation
//
//  Created by Ivan Zakharchenko on 17/10/2022.
//

import UIKit

protocol SecondScreenInteractorOutput {
}

protocol SecondScreenInteractorInput {
}

final class SecondScreenInteractor {
    var presenter: SecondScreenInteractorOutput!
}

extension SecondScreenInteractor: SecondScreenInteractorInput {
}

