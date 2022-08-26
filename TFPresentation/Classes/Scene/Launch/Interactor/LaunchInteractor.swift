//
//  LaunchInteractor.swift
//  TFApp
//
//  Created by Jeroen Bakker on 27/12/2019.
//  Copyright © 2019 Triple. All rights reserved.
//

import TFDomain

final class LaunchInteractor {
    
    // MARK: Private properties
    private var presenter: LaunchPresenter?
    private var router: LaunchRouter?
    
    // MARK: Lifecycle
    init() { }
    
    // MARK: Internal methods
    func setup(with presenter: LaunchPresenter, router: LaunchRouter?) {
        self.presenter = presenter
        self.router = router
    }
}

// MARK: - Requests
extension LaunchInteractor {
    
    func handleInitialize() {
        router?.showHome()
    }
}
