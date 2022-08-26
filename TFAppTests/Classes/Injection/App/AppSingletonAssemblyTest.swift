//
//  AppSingletonAssemblyTest.swift
//  TFAppTests
//
//  Created by Tom van der Spek on 28/10/2019.
//  Copyright © 2019 Triple. All rights reserved.
//

import XCTest
@testable import TFApp

final class AppSingletonAssemblyTest: XCTestCase {
    
    func test_container_shouldBeAbleToResolveAllRegisteredObject() {
        
        tryToResolveSingleton(AppDelegate.self)
        tryToResolveSingleton(UIApplication.self)
        tryToResolveSingleton(UserDefaults.self)
    }
}
