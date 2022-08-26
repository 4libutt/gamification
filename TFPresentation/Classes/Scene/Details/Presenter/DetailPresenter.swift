//
//  DetailPresenter.swift
//  TFPresentation
//
//  Created by Ali Butt on 25/03/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation
import TFDomain

final class DetailPresenter {
    
    // MARK: private properties
    private weak var displayLogic: DetailViewController?
    
    func setup(with displayLogic: DetailViewController?) {
        self.displayLogic = displayLogic
    }
}

// MARK: - Responses
extension DetailPresenter {
    
    func present(isLoading: Bool) {
        displayLogic?.display(isLoading: isLoading)
    }
    
    func present(details: PokemonDetail) {
        
        let abilities = details.abilities.map({ ability in
            return ability.name
        })
        
        let types = details.types.map({ type in
            return type.rawValue
        })
        
        let detailViewmodel = DetailViewController.Viewmodel(
            abilities: "Abilities: \(abilities.joined(separator: ", ").capitalized)",
            height: "Height: \(details.height) m", 
            id: details.id,
            name: details.name,
            sprites: details.sprites.pokemonUrl,
            hpstat: "HP: \(details.stats.stat["hp"] ?? 0)",
            attackstat: "Attack: \(details.stats.stat["attack"] ?? 0)",
            defenseStat: "Defense: \(details.stats.stat["defense"] ?? 0)",
            specialAttackStat: "Special attack: \(details.stats.stat["special-attack"] ?? 0)",
            specialDefenseStat: "Special defense: \(details.stats.stat["special-defense"] ?? 0)",
            speedStat: "Speed: \(details.stats.stat["speed"] ?? 0)",
            types: "Typing: \(types.joined(separator: ", ").capitalized)",
            weight: "Weight: \(details.weight) kg"
        )
        
        displayLogic?.displayDetails(details: detailViewmodel)
    }
    
    func presentTitle(pokemon: Pokemon) {
        displayLogic?.title = pokemon.name.capitalized
    }
}
