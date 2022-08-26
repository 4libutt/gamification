//
//  SingletonAssembly.swift
//  TFApp
//
//  Created by Tom van der Spek on 28/10/2019.
//  Copyright © 2019 Triple. All rights reserved.
//

import Foundation
import Resolver
import TFExtensions

final class SingletonAssembly: Assembly {
    
    // MARK: Internal methods
    func assemble(with resolver: Resolver) {
        
        resolver.register {
            // swiftlint:disable:next force_cast
            resolver.resolve(UIApplication.self).delegate as! AppDelegate
        }
        
        resolver.register {
            return UIScreen.main
        }
        
        resolver.register {
            return UIWindow()
        }
        
        resolver.register {
            return UIApplication.shared
        }
        
        resolver.register {
            return UserDefaults.standard
        }
    }
}
