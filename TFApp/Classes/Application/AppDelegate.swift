//
//  AppDelegate.swift
//  TFApp
//
//  Created by Tom van der Spek on 28/10/2019.
//  Copyright © 2019 Triple. All rights reserved.
//

import UIKit
import TFPresentation
import Resolver

@UIApplicationMain
final class AppDelegate: UIResponder, UIApplicationDelegate {
    
    lazy var window: UIWindow? = Resolver.main.resolve(UIWindow.self)
    let applicationDependencies: ApplicationDependencies = .init()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        setupWindow()
        
        return true
    }
}

// MARK: - Private methods
private extension AppDelegate {
    func setupWindow() {
        let navigationController = UINavigationController()
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
        
        let coordinator = AppCoordinator(navigationController: navigationController)
        coordinator.start()
    }
}
