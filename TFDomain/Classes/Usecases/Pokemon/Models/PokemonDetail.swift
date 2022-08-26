//
//  PokemonDetail.swift
//  TFDomain
//
//  Created by Ali Butt on 25/03/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation

public typealias Kilograms = Double
public typealias Meters = Double

public struct PokemonDetail {
    public let abilities: [PokemonAbility]
    public let height: Meters
    public let id: Int
    public let name: String
    public let sprites: PokemonPicture
    public let stats: PokemonStats
    public let types: [PokemonType]
    public let weight: Kilograms
    
    public init(abilities: [PokemonAbility], height: Meters, id: Int, name: String, sprites: PokemonPicture, stats: PokemonStats, types: [PokemonType], weight: Kilograms) {
        self.abilities = abilities
        self.height = height
        self.id = id
        self.name = name
        self.sprites = sprites
        self.stats = stats
        self.types = types
        self.weight = weight
    }
}
