//
//  LaunchPresenter.swift
//  TFApp
//
//  Created by Jeroen Bakker on 27/12/2019.
//  Copyright © 2019 Triple. All rights reserved.
//

import Foundation

final class LaunchPresenter {
    
    // MARK: private properties
    private weak var displayLogic: LaunchViewController?
    
    func setup(with displayLogic: LaunchViewController?) {
        self.displayLogic = displayLogic
    }
}

// MARK: - Responses
extension LaunchPresenter {
    
}
