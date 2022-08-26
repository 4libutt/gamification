//
//  PokemonPicture.swift
//  TFDomain
//
//  Created by Ali Butt on 29/04/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation

public struct PokemonPicture {
    public let pokemonUrl: [URL]
    
    public init(pokemonUrl: [URL]) {
        self.pokemonUrl = pokemonUrl
    }
}
