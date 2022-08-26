//
//  GetPokemonsResultEntity.swift
//  TFData
//
//  Created by Jeroen Bakker on 11/03/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation

struct GetPokemonsResultEntity: Decodable {
    let count: Int?
    let next: String?
    let previous: [PokemonEntity]?
    let results: [PokemonEntity]?
}
