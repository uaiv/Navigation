//
//  SecondScreenViewContoller.swift
//  Custom Navigation
//
//  Created by Ivan Zakharchenko on 17/10/2022.
//

import UIKit
import RxSwift
import RxCocoa
import RxDataSources

final class SecondScreenViewController: BaseViewController, SecondScreenPresenterOutput {
    
    // MARK: - Consts
    enum Const {
        static let titleLabelName = "Second Screen"
    }
    // MARK: - Properties
    var router: SecondScreenRoutingLogic?
    var interactor: SecondScreenInteractorInput!
    private let disposeBag = DisposeBag()
    
    // MARK: - Override properties
    override var isHeaderHidden: Bool { return false }
    override var titleLabel: String? { return Const.titleLabelName }
    override var isBackButtonHidden: Bool { return false }
    
    // MARK: - Override
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpTableView()
    }
    
    // MARK: - Methods
    private func setUpTableView() {
        view.backgroundColor = .systemPink
    }
    
  }
