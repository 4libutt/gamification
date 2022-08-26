//
//  ListPokemonsModels.swift
//  TFData
//
//  Created by Ali Butt on 10/03/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation

enum ListPokemons {
    
    enum FetchAllPokemons {
        
        struct Request {
            
        }
        
        struct Response {
            
//            var pokemons: [Pokemon]
        }
        
        struct ViewModel {
            
            struct DisplayedOrder
            {
                var naam: String
            }
            var displayedOrders: [DisplayedOrder]
        }
    }
}
