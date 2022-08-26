//
//  PokemonTypesMapper.swift
//  TFData
//
//  Created by Ali Butt on 22/04/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation
import TFDomain

struct PokemonTypesMapper {
    
    func map(entity: PokemonTypeEntity?) -> PokemonType? {

        guard let type = entity?.type?.name
        else {
            return nil
        }

        return PokemonType(rawValue: type)
    }
}
