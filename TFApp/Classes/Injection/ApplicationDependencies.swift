//
//  ApplicationDependencies.swift
//  TFApp
//
//  Created by Tom van der Spek on 28/10/2019.
//  Copyright © 2019 Triple. All rights reserved.
//

import Resolver
import TFPresentation
import TFDomain
import TFData
import TFExtensions

final class ApplicationDependencies {
    
    // MARK: Internal properties
    let resolver: Resolver = .main
    
    // MARK: Private properties
    private let assemblies: [Assembly] = [
        TargetAssembly(),
        TFData.TargetAssembly()
    ]
    
    // MARK: Lifecycle
    init() {
        assemblies.forEach({
            $0.assemble(with: resolver)
        })
    }
}
