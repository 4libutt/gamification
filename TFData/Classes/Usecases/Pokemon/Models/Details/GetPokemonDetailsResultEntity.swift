//
//  GetPokemonDetailsResultEntity.swift
//  TFData
//
//  Created by Ali Butt on 08/04/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation

struct GetPokemonDetailsResultEntity: Decodable {
    let abilities: [PokemonAbilityEntity]?
    let height: Int?
    let id: Int?
    let name: String?
    let sprites: PokemonSpritesEntity?
    let stats: [PokemonStatEntity]?
    let types: [PokemonTypeEntity]?
    let weight: Int?
}
