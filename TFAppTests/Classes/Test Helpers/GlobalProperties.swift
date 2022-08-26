//
//  GlobalProperties.swift
//  TFPresentationTests
//
//  Created by Tom van der Spek on 28/10/2019.
//  Copyright © 2019 Triple. All rights reserved.
//

import Foundation
import Resolver
@testable import TFApp

private let container: Resolver = ApplicationDependencies().resolver

/// Resolves object from untouched container
func resolve<T>(_ type: T.Type) -> T? {
    return container.resolve(T.self)
}
