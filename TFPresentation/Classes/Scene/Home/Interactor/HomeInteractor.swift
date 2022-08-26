//
//  HomeInteractor.swift
//  TFPresentation
//
//  Created by Ali Butt on 03/03/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import TFDomain
import Resolver

final class HomeInteractor {
    
    // MARK: Private properties
    @Injected private var getPokemonsWorker: GetPokemonsWorker
    
    private var presenter: HomePresenter?
    private var router: HomeRouter?
    private var pokemons: [Pokemon] = []
    
    // MARK: Internal methods
    func setup(with presenter: HomePresenter, router: HomeRouter?) {
        self.presenter = presenter
        self.router = router
    }
}

// MARK: - Requests
extension HomeInteractor {
    
    func goToDetails(selectedPokemon: PokemonCell.ViewModel) {
        guard let pokemon = pokemons.first(where: { $0.id == selectedPokemon.id }) else {
            return
        }
        
        router?.showDetails(selectedPokemon: pokemon)
    }
    
    func getAllPokemons() {
        presenter?.present(isLoading: true)
        
        Task {
            do {
                let pokemons = try await getPokemonsWorker.invoke(with: 0, limit: 151)
                self.pokemons = pokemons
                
                presenter?.present(pokemons: pokemons)
            } catch let error {
                debugPrint(error)
            }
            
            presenter?.present(isLoading: false)
        }
    }
}
