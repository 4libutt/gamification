//
//  DetailViewController.swift
//  TFPresentation
//
//  Created by Ali Butt on 25/03/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import UIKit
import EasyPeasy
import Nuke

// MARK: ViewController
public final class DetailViewController: UIViewController {
    
    // MARK: Internal properties
    private lazy var stackView: UIStackView = makeVerticalStackView()
    
    //Images
    private lazy var imagesStackView: UIStackView = makeHorizontalStackView()
    private lazy var pokemonImageView: UIImageView = makeUIImageView()
    private lazy var shinyPokemonImageView: UIImageView = makeUIImageView()
    
    //Measurements
    private lazy var measurementStackView: UIStackView = makeHorizontalStackView()
    private lazy var heightLabel: UILabel = makeUILabel()
    private lazy var weightLabel: UILabel = makeUILabel()

    //Abilities & types
    private lazy var abilitiesLabel: UILabel = makeUILabel()
    private lazy var typesLabel: UILabel = makeUILabel()
    
    //Stats
    private lazy var statContainerStackView: UIStackView = makeVerticalStackView()
    private lazy var hpLabel: UILabel = makeUILabel()
    private lazy var attackLabel: UILabel = makeUILabel()
    private lazy var defenseLabel: UILabel = makeUILabel()
    private lazy var specialAttackLabel: UILabel = makeUILabel()
    private lazy var specialDefenseLabel: UILabel = makeUILabel()
    private lazy var speedLabel: UILabel = makeUILabel()
    
    // MARK: Private properties
    private let interactor: DetailInteractor
    private var details: DetailViewController.Viewmodel?
    
    // MARK: Lifecycle
    required init(interactor: DetailInteractor) {
        self.interactor = interactor
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("\(#function) has not been implemented")
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        setup()
        interactor.handleInitialize()
    }
    
    override public func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        navigationController?.navigationBar.isHidden = true
    }
}

// MARK: Display logic methods
extension DetailViewController {
    func display(isLoading: Bool) {
        // for animations?
    }

    func displayDetails(details: DetailViewController.Viewmodel) {
        self.details = details
        
        DispatchQueue.main.async {
            Nuke.loadImage(with: details.sprites[0], into: self.pokemonImageView)
            Nuke.loadImage(with: details.sprites[1], into: self.shinyPokemonImageView)
            self.heightLabel.text = details.height
            self.weightLabel.text = details.weight
            self.abilitiesLabel.text = details.abilities
            self.typesLabel.text = details.types
            self.hpLabel.text = details.hpstat
            self.attackLabel.text = details.attackstat
            self.defenseLabel.text = details.defenseStat
            self.specialAttackLabel.text = details.specialAttackStat
            self.specialDefenseLabel.text = details.specialDefenseStat
            self.speedLabel.text = details.speedStat
            
        }
        
    }
}

// MARK: Private setup methods
private extension DetailViewController {
    
    func setup() {
        
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        view.addSubview(stackView)
        
        stackView.addArrangedSubview(imagesStackView)
        imagesStackView.addArrangedSubview(pokemonImageView)
        imagesStackView.addArrangedSubview(shinyPokemonImageView)

        
        stackView.addArrangedSubview(measurementStackView)
        measurementStackView.addArrangedSubview(heightLabel)
        measurementStackView.addArrangedSubview(weightLabel)
        stackView.setCustomSpacing(40, after: measurementStackView)
        
        stackView.addArrangedSubview(abilitiesLabel)
        stackView.addArrangedSubview(typesLabel)
        stackView.setCustomSpacing(40, after: typesLabel)
        
        stackView.addArrangedSubview(hpLabel)
        stackView.addArrangedSubview(attackLabel)
        stackView.addArrangedSubview(defenseLabel)
        stackView.addArrangedSubview(specialAttackLabel)
        stackView.addArrangedSubview(specialDefenseLabel)
        stackView.addArrangedSubview(speedLabel)
        
        stackView.easy.layout(
            Top(90),
            Left(20),
            Right(20),
            Bottom(>=50)
        )
    }
}

// MARK: Private builder methods
private extension DetailViewController {
    
    func makeVerticalStackView() -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.spacing = 10
        return stackView
    }
    
    func makeHorizontalStackView() -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.alignment = .center
        stackView.distribution = .fill
        stackView.spacing = 10
        return stackView
    }
    
    func makeUIImageView() -> UIImageView {
        let imageView = UIImageView()
        imageView.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        imageView.layer.cornerRadius = 3
        return imageView
    }
    
    func makeUILabel() -> UILabel {
        let label = UILabel()
        return label
    }
    
    func load(url: URL, picture: UIImageView) {
        DispatchQueue.global().async {
            if let data = try? Data(contentsOf: url) {
                if let image = UIImage(data: data) {
                    DispatchQueue.main.async {
                        picture.image = image
                    }
                }
            }
        }
    }

}

extension DetailViewController {
    struct Viewmodel {
        let abilities: String
        let height: String
        let id: Int
        let name: String
        let sprites: [URL]
        let hpstat: String
        let attackstat: String
        let defenseStat: String
        let specialAttackStat: String
        let specialDefenseStat: String
        let speedStat: String
        let types: String
        let weight: String
    }
}
