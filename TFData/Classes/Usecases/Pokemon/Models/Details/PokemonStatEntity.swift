//
//  PokemonStatEntity.swift
//  TFData
//
//  Created by Ali Butt on 08/04/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation

struct PokemonStatEntity: Decodable {
    let baseStat: Int?
    let effort: Int?
    let stat: PokemonSpeciesEntity?
    
    enum CodingKeys: String, CodingKey {
        case baseStat = "base_stat"
        case effort
        case stat
    }
}
