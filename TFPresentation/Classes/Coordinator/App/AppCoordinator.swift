//
//  AppCoordinator.swift
//  TFPresentation
//
//  Created by Mart Zonneveld on 04/10/2020.
//  Copyright © 2020 Triple. All rights reserved.
//

import UIKit
import TFDomain

public final class AppCoordinator: Coordinator {
        
    private var navigationController: UINavigationController?
    private var childCoordinator: Coordinator?
    
    public init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    public func start() {
        let launchVC = LaunchViewController.make(with: self)
        navigationController?.setViewControllers([launchVC], animated: false)
    }
}

// MARK: LaunchRoutable
extension AppCoordinator: LaunchRouter {
    
    func showHome() {
        let home = HomeViewController.make(with: self)
        navigationController?.setViewControllers([home], animated: true)
        navigationController?.navigationBar.isHidden = true
    }
}

extension AppCoordinator: HomeRouter {
    
    func showDetails(selectedPokemon: Pokemon) {
        let details = DetailViewController.make(with: self, pokemon: selectedPokemon)
        navigationController?.pushViewController(details, animated: true)
        navigationController?.navigationBar.isHidden = false
    }
}

extension AppCoordinator: DetailRouter {
    
}
