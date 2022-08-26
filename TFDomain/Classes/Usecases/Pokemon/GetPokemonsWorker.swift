//
//  GetPokemonsWorker.swift
//  TFDomain
//
//  Created by Jeroen Bakker on 11/03/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation

public protocol GetPokemonsWorker {
    func invoke(with offset: Int, limit: Int) async throws -> [Pokemon]
}

public enum GetPokemonsError: Error {
    case empty
    case unknown
}
