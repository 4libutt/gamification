//
//  LaunchViewControllerFactory.swift
//  TFApp
//
//  Created by Jeroen Bakker on 27/12/2019.
//  Copyright © 2019 Triple. All rights reserved.
//

import Resolver

// MARK: Factory
extension LaunchViewController {
    
    static func make(with router: LaunchRouter) -> LaunchViewController {
        let interactor = LaunchInteractor()
        let presenter = LaunchPresenter()
        let viewController = LaunchViewController(interactor: interactor)
        
        interactor.setup(with: presenter, router: router)
        presenter.setup(with: viewController)
        
        return viewController
    }
}
