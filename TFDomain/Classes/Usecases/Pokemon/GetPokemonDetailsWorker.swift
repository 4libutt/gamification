//
//  GetPokemonDetailsWorker.swift
//  TFDomain
//
//  Created by Ali Butt on 25/03/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation

public protocol GetPokemonDetailsWorker {
    func invoke(with name: String) async throws -> PokemonDetail
}

public enum GetPokemonDetailsError: Error {
    case empty
    case unknown
}
