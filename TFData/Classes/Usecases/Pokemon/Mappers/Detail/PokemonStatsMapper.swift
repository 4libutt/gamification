//
//  PokemonStatsMapper.swift
//  TFData
//
//  Created by Ali Butt on 08/04/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation
import TFDomain

struct PokemonStatsMapper {
    
    func map(entity: PokemonStatEntity?) -> [String: Int]? {

        guard let statsValue = entity?.baseStat,
              let statsTypes = entity?.stat?.name
        else {
            return nil
        }

        let dictionary: [String: Int] = [statsTypes: statsValue]

        return dictionary
    }
}
