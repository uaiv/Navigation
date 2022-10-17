//
//  FirstScreenViewController.swift
//  Custom Navigation
//
//  Created by Ivan Zakharchenko on 17/10/2022.
//

import UIKit
import SnapKit
import RxSwift
import RxCocoa

protocol DisplayLogic: AnyObject {
    func displayData()
}

final class FirstScreenViewController: BaseViewController {
    
    // MARK: - Consts
    private enum Consts {
        static let burgerMenu = UIImage(named: "burger_menu")?.withRenderingMode(.alwaysOriginal)
        static let labelName = "First Screen"
    }
    
    // MARK: - Outlets
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.backgroundColor = .yellow
        label.text = Consts.labelName
        label.textAlignment = .center
        return label
    }()
    
    // MARK: - Override properties
    override var isRightButtonHidden: Bool { return false }
    override var rightNavBarButtonImage: UIImage? { return Consts.burgerMenu }
    override var isBackButtonHidden: Bool { return false }
    
    // MARK: - Properties
    var router: RoutingLogic?
    var interactor: BusinessLogic?
    private let disposeBag = DisposeBag()
    
    // MARK: - Override
    override func viewDidLoad() {
        super.viewDidLoad()
        setupSubviews()
    }
    
    // MARK: - Methods
    private func setupSubviews() {
        view.backgroundColor = .gray
        
        view.addSubview(label)
        label.snp.makeConstraints { maker in
            maker.top.equalToSuperview().inset(300)
            maker.leading.equalToSuperview().offset(15)
            maker.trailing.equalToSuperview().inset(15)
            maker.height.equalTo(60)
        }
    }
    
}

extension FirstScreenViewController: DisplayLogic {
    func displayData() {
    }
}

