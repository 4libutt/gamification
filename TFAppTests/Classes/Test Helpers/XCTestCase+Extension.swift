//
//  XCTestCase+Extension.swift
//  TFPresentationTests
//
//  Created by Tom van der Spek on 28/10/2019.
//  Copyright © 2019 Triple. All rights reserved.
//

import Foundation
import XCTest
import Resolver

extension XCTestCase {
    
    func tryToResolve<T>(_ registeredType: T.Type) {
        // When
        let resolvedObject = resolve(T.self)
        
        // Then
        XCTAssertNotNil(resolvedObject, "\(T.self) should have been registered")
    }
    
    func tryToResolveSingleton<T: AnyObject>(_ registeredType: T.Type) {
        // When
        let firstResolvedObject = resolve(T.self)
        let secondResolvedObject = resolve(T.self)
        
        // Then
        XCTAssertNotNil(firstResolvedObject, "\(T.self) should have been registered")
        XCTAssertTrue(firstResolvedObject === secondResolvedObject, "Two resolved singletons of type \(T.self) should have the same pointer")
    }
}
