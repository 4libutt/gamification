//
//  PokemonDetailMapper.swift
//  TFData
//
//  Created by Ali Butt on 25/03/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation
import TFDomain
import Resolver

struct PokemonDetailMapper {
    
    @Injected private var pokemonAbilityMapper: PokemonAbilityMapper
    @Injected private var pokemonSpritesMapper: PokemonSpritesMapper
    @Injected private var pokemonStatsMapper: PokemonStatsMapper
    @Injected private var pokemonTypesMapper: PokemonTypesMapper
    
    func map(entity: GetPokemonDetailsResultEntity?) -> PokemonDetail? {
        
        guard
            let abilities = entity?.abilities?.compactMap({
                pokemonAbilityMapper.map(entity: $0)
            }),
            let height = entity?.height,
            let id = entity?.id,
            let name = entity?.name,
            let sprites = pokemonSpritesMapper.map(entity: entity?.sprites),
            let stats = entity?.stats?.compactMap({ pokemonStatsMapper.map(entity: $0) }).flatMap({ $0 }).reduce([String: Int](), { (dict, tuple) in
                var nextDict = dict
                nextDict.updateValue(tuple.1, forKey: tuple.0)
                return nextDict
            }),
            let types = entity?.types?.compactMap({ pokemonTypesMapper.map(entity: $0) }),
            let weight = entity?.weight
        else {
            return nil
        }
        
        let newStats = PokemonStats(stat: stats)
        
        return PokemonDetail(abilities: abilities, height: Meters(height) / 10, id: id, name: name, sprites: sprites, stats: newStats, types: types, weight: Kilograms(weight) / 10)
    }
}
