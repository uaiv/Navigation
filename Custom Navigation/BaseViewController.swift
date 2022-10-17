//
//  BaseViewController.swift
//  Custom Navigation
//
//  Created by Ivan Zakharchenko on 17/10/2022.
//

import UIKit
import SnapKit
import RxSwift
import RxCocoa

protocol BaseViewControllerDelegate: AnyObject {
    func loadController(with contentController: BaseViewController)
    func updateUI(controller: BaseViewController)
}

class BaseViewController: UIViewController, ViewProtocol {
    
    // MARK: - Properties
    var navigationBarItem: NavigationBarItemType { return .backButton }
    var isHeaderHidden: Bool { return false }
    var titleLabel: String? { return "" }
    var rightNavigationButtonTitle: String { return "" }
    var rightNavBarButtonImage: UIImage? { return nil }
    var leftNavBarButtonTitle: String? { return "" }
    var leftNavBarButtonImage: String? { return "" }
    var isRightButtonHidden: Bool { return true }
    var isBackButtonHidden: Bool { return false }
    var rightButtonHandler: (() -> Void)? { return nil }
    var isProgressBarHidden: Bool { return true }
    
    // MARK: - Delegate
    weak var delegate: BaseViewControllerDelegate?
    
    // MARK: - Override
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.delegate?.updateUI(controller: self)
    }
    
}

