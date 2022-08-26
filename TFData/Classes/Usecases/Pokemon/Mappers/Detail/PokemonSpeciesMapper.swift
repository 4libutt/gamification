//
//  PokemonSpeciesMapper.swift
//  TFData
//
//  Created by Ali Butt on 08/04/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation

struct PokemonSpeciesMapper {
    
    func map(entity: PokemonSpeciesEntity?) -> String? {
        guard
            let ability = entity?.name
        else {
            return nil
        }

        return ability
    }
}
