//
//  GetPokemonsService.swift
//  TFData
//
//  Created by Jeroen Bakker on 11/03/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation
import TFDomain
import Alamofire
import Resolver

struct GetPokemonsService: GetPokemonsWorker {
    
    @Injected private var pokemonMapper: PokemonMapper
    
    func invoke(with offset: Int, limit: Int) async throws -> [Pokemon] {
        let apiToContact = "https://pokeapi.co/api/v2/pokemon"
        
        return try await withCheckedThrowingContinuation({ continuation in
            AF.request(
                apiToContact,
                method: .get,
                parameters: [
                    "offset": offset,
                    "limit": limit
                ],
                encoding: URLEncoding.queryString,
                headers: nil,
                interceptor: nil,
                requestModifier: nil
            ).responseDecodable(of: GetPokemonsResultEntity.self) { response in
                guard
                    let pokemons = response.value?.results?.compactMap({ self.pokemonMapper.map(entity: $0) })
                else {
                    return continuation.resume(throwing: response.error ?? GetPokemonsError.unknown)
                }
                
                if pokemons.isEmpty {
                    return continuation.resume(throwing: GetPokemonsError.empty)
                } else {
                    return continuation.resume(returning: pokemons)
                }
            }
        })
    }
}
