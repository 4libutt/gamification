//
//  PokemonTypeEntity.swift
//  TFData
//
//  Created by Ali Butt on 08/04/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation

struct PokemonTypeEntity: Decodable {
    let slot: Int?
    let type: PokemonSpeciesEntity?
}
