//
//  PokemonMapper.swift
//  TFData
//
//  Created by Jeroen Bakker on 11/03/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation
import TFDomain

struct PokemonMapper {
    
    func map(entity: PokemonEntity?) -> Pokemon? {
        guard let name = entity?.name else {
            return nil
        }
        
        return Pokemon(name: name)
    }
}
