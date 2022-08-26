//
//  TargetAssembly.swift
//  TFData
//
//  Created by Tom van der Spek on 28/10/2019.
//  Copyright © 2019 Triple. All rights reserved.
//

import Resolver
import TFExtensions
import TFDomain

public final class TargetAssembly: Assembly {
    
    // MARK: Lifecycle
    public init() { }
    
    // MARK: Public methods
    public func assemble(with resolver: Resolver) {
        resolver.register(PokemonMapper.self, PokemonMapper.init)
        resolver.register(GetPokemonsWorker.self, GetPokemonsService.init)
        resolver.register(PokemonDetailMapper.self, PokemonDetailMapper.init)
        resolver.register(GetPokemonDetailsWorker.self, GetPokemonDetailService.init)
        resolver.register(PokemonAbilityMapper.self, PokemonAbilityMapper.init)
        resolver.register(PokemonSpritesMapper.self, PokemonSpritesMapper.init)
        resolver.register(PokemonStatsMapper.self, PokemonStatsMapper.init)
        resolver.register(PokemonTypesMapper.self, PokemonTypesMapper.init)
    }
}
