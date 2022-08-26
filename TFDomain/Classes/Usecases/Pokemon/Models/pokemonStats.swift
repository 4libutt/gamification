//
//  pokemonStats.swift
//  TFDomain
//
//  Created by Ali Butt on 29/04/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation

public struct PokemonStats {
    public let stat: [String: Int]
    
    public init(stat: [String: Int]) {
        self.stat = stat
    }
}
