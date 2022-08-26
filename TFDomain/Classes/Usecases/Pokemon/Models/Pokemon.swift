//
//  Pokemon.swift
//  TFDomain
//
//  Created by Jeroen Bakker on 11/03/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation

public struct Pokemon {
    public let id: String
    public let name: String
    
    public init(id: String = UUID().uuidString, name: String) {
        self.id = id
        self.name = name
    }
}
