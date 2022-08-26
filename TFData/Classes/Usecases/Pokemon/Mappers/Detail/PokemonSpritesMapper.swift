//
//  PokemonSpritesMapper.swift
//  TFData
//
//  Created by Ali Butt on 08/04/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation
import TFDomain

struct PokemonSpritesMapper {
    
    func map(entity: PokemonSpritesEntity?) -> PokemonPicture? {
        
        guard
            let frontURL = entity?.frontDefault,
            let shinyURL = entity?.frontShiny,
            let frontSprite = URL(string: frontURL),
            let shinySprite = URL(string: shinyURL)
        else {
            return nil
        }
        
        let urlArray = [frontSprite, shinySprite]

        return PokemonPicture(pokemonUrl: urlArray)
    }
}
