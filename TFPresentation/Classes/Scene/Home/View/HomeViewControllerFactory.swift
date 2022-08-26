//
//  HomeViewConntrollerFactory.swift
//  TFPresentation
//
//  Created by Ali Butt on 03/03/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Resolver

// MARK: Factory
extension HomeViewController {
    
    static func make(with router: HomeRouter) -> HomeViewController {
        let interactor = HomeInteractor()
        let presenter = HomePresenter()
        let viewController = HomeViewController(interactor: interactor)
        
        interactor.setup(with: presenter, router: router)
        presenter.setup(with: viewController)
        
        return viewController
    }
}
