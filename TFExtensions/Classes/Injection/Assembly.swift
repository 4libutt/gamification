//
//  Assembly.swift
//  TFExtensions
//
//  Created by Roy Thierry on 19/11/2021.
//  Copyright © 2021 Triple. All rights reserved.
//

import Foundation
import Resolver

public protocol Assembly {
    func assemble(with resolver: Resolver)
}
