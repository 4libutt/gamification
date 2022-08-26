//
//  PokemonAbilityMapper.swift
//  TFData
//
//  Created by Ali Butt on 08/04/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation
import Resolver
import TFDomain

struct PokemonAbilityMapper {
    
    func map(entity: PokemonAbilityEntity?) -> PokemonAbility? {
        
        guard let name = entity?.ability?.name else {
            return nil
        }

        return PokemonAbility(name: name)
    }
}
