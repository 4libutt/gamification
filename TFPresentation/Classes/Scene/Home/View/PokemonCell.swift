//
//  PokemonCell.swift
//  TFPresentation
//
//  Created by Ali Butt on 11/03/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import Foundation
import UIKit
import EasyPeasy
import TFExtensions

final class PokemonCell: UITableViewCell, Reusable {
    
    // MARK: Internal properties
    private let cellBubble = UIView()
    private let pokemonName = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setup()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    
    func update(with viewModel: ViewModel) {
        self.pokemonName.text = viewModel.name.capitalized
    }
}

// MARK: ViewModel
extension PokemonCell {
    struct ViewModel {
        let id: String
        let name: String
    }
}

// MARK: Private setup methods
private extension PokemonCell {
    
    func setup() {
        // Rounding corners of the cell bubble
        cellBubble.layer.masksToBounds = false
        cellBubble.layer.cornerRadius = 5

        // Adding shadow around the cell
        cellBubble.layer.shadowOffset = CGSize(width: 0, height: 0)
        cellBubble.layer.shadowColor = UIColor.black.cgColor
        cellBubble.layer.shadowOpacity = 0.20
        cellBubble.layer.shadowRadius = 3
        cellBubble.backgroundColor = .white
        
        contentView.addSubview(cellBubble)
        contentView.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        cellBubble.easy.layout(
            Top(8),
            Left(8),
            Bottom(8),
            Right(8)
        )
        
        cellBubble.addSubview(pokemonName)
        pokemonName.easy.layout(
            Top(8),
            Left(8),
            Right(<=8),
            Bottom(8)
        )
    }
}
