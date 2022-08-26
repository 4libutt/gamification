//
//  DetailViewControllerFactory.swift
//  TFPresentation
//
//  Created by Ali Butt on 25/03/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Resolver
import TFDomain

// MARK: Factory
extension DetailViewController {
    
    static func make(with router: DetailRouter, pokemon: Pokemon) -> DetailViewController {
        let interactor = DetailInteractor()
        let presenter = DetailPresenter()
        let viewController = DetailViewController(interactor: interactor)
        
        interactor.setup(with: presenter, router: router, pokemon: pokemon)
        presenter.setup(with: viewController)
        
        return viewController
    }
}
