//
//  HomeRouter.swift
//  TFPresentation
//
//  Created by Ali Butt on 03/03/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation
import TFDomain

protocol HomeRouter: AnyObject {
    
    func showDetails(selectedPokemon: Pokemon)
}
