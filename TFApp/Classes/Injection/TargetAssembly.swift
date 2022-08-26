//
//  TargetAssembly.swift
//  TFApp
//
//  Created by Tom van der Spek on 28/10/2019.
//  Copyright © 2019 Triple. All rights reserved.
//

import Resolver
import TFExtensions

public final class TargetAssembly: Assembly {
    
    // MARK: Lifecycle
    public init() { }
    
    // MARK: Public methods
    public func assemble(with resolver: Resolver) {
        
        SingletonAssembly().assemble(with: resolver)
    }
}
