//
//  LaunchViewController.swift
//  TFApp
//
//  Created by Jeroen Bakker on 27/12/2019.
//  Copyright © 2019 Triple. All rights reserved.
//

import UIKit

// MARK: ViewController
public final class LaunchViewController: UIViewController {
    
    // MARK: Internal properties
    
    // MARK: Private properties
    private let interactor: LaunchInteractor
    
    // MARK: Lifecycle
    required init(interactor: LaunchInteractor) {
        self.interactor = interactor
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("\(#function) has not been implemented")
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        setup()
        interactor.handleInitialize()
    }
}

// MARK: Display logic methods
extension LaunchViewController {
    
}

// MARK: Private setup methods
private extension LaunchViewController {
    
    func setup() {
        
    }
}
