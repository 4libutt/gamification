//
//  HomePresenter.swift
//  TFPresentation
//
//  Created by Ali Butt on 03/03/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation
import TFDomain

final class HomePresenter {
    
    // MARK: private properties
    private weak var displayLogic: HomeViewController?
    
    func setup(with displayLogic: HomeViewController?) {
        self.displayLogic = displayLogic
    }
}

// MARK: - Responses
extension HomePresenter {
    
    func present(isLoading: Bool) {
        displayLogic?.display(isLoading: isLoading)
    }
    
    func present(pokemons: [Pokemon]) {
        // convert pokemon models to your view viewModels and call display logic
        var viewmodel = [PokemonCell.ViewModel]()
        for pokemon in pokemons {
            viewmodel.append(PokemonCell.ViewModel(
                id: pokemon.id,
                name: pokemon.name
            ))
        }
        displayLogic?.displayPokemon(pokemons: viewmodel)
    }
}
