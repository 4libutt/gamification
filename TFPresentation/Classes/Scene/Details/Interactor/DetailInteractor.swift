//
//  DetailInteractor.swift
//  TFPresentation
//
//  Created by Ali Butt on 25/03/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import TFDomain
import Resolver

final class DetailInteractor {
    
    // MARK: Private properties
    @Injected private var getPokemonDetailsWorker: GetPokemonDetailsWorker
    
    private var presenter: DetailPresenter?
    private var router: DetailRouter?
    private var pokemon: Pokemon?
    private var details: PokemonDetail?
    
    // MARK: Internal methods
    func setup(with presenter: DetailPresenter, router: DetailRouter?, pokemon: Pokemon) {
        self.presenter = presenter
        self.router = router
        self.pokemon = pokemon
    }
}

// MARK: - Requests
extension DetailInteractor {
    
    func handleInitialize() {
        presenter?.present(isLoading: true)
        if let selectedPokemon = pokemon {
            presenter?.presentTitle(pokemon: selectedPokemon)
            Task {
                do {
                    let detail = try await getPokemonDetailsWorker.invoke(with: selectedPokemon.name)
                    self.details = detail

                    presenter?.present(details: detail)
                } catch let error {
                    debugPrint(error)
                }

                presenter?.present(isLoading: false)
            }
        }
        
    }
}
