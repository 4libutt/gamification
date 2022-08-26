//
//  GetPokemonDetailService.swift
//  TFData
//
//  Created by Ali Butt on 08/04/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation
import TFDomain
import Alamofire
import Resolver

struct GetPokemonDetailService: GetPokemonDetailsWorker {
    
    @Injected private var pokemonDetailMapper: PokemonDetailMapper
    
    func invoke(with name: String) async throws -> PokemonDetail {
        let apiToContact = "https://pokeapi.co/api/v2/pokemon/\(name)"
        
        return try await withCheckedThrowingContinuation({ continuation in
            AF.request(
                apiToContact,
                method: .get,
                parameters: nil,
                encoding: URLEncoding.queryString,
                headers: nil,
                interceptor: nil,
                requestModifier: nil
            ).responseDecodable(of: GetPokemonDetailsResultEntity.self) { response in
                guard
                    let pokemonDetails = response.value.map({ pokemonDetailMapper.map(entity: $0) })
                else {
                    return continuation.resume(throwing: response.error ?? GetPokemonDetailsError.unknown)
                }
     
                if let detail = pokemonDetails {
                    return continuation.resume(returning: detail)
                } else {
                    return continuation.resume(throwing: GetPokemonDetailsError.empty)
                }
                
            }
        })
    }
}
