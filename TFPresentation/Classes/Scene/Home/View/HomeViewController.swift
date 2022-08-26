//
//  HomeViewController.swift
//  TFPresentation
//
//  Created by Ali Butt on 03/03/2022.
//  Copyright © 2022 Triple. All rights reserved.
//

import UIKit
import EasyPeasy
import TFExtensions

// MARK: ViewController
public final class HomeViewController: UIViewController {
    
    // MARK: Internal properties
    private lazy var stackView: UIStackView = makeStackView()
    private lazy var searchbar: UISearchBar = makeSearchbar()
    private lazy var tableview: UITableView = makeTableView()
    
    // MARK: Private properties
    private let interactor: HomeInteractor
    private var pokemons: [PokemonCell.ViewModel] = []
    private var filteredPokemons: [PokemonCell.ViewModel] = []
    
    // MARK: Lifecycle
    required init(interactor: HomeInteractor) {
        self.interactor = interactor
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("\(#function) has not been implemented")
    }
    
    override public func viewDidLoad() {
        super.viewDidLoad()

        setup()
        interactor.getAllPokemons()
    }
}

// MARK: Display logic methods
extension HomeViewController {
    func display(isLoading: Bool) {
        // for animations?
    }
    
    func displayPokemon(pokemons: [PokemonCell.ViewModel]) {
        self.pokemons = pokemons
        self.filteredPokemons = pokemons
        
        DispatchQueue.main.async {
            self.tableview.reloadData()
        }
    }
}

// MARK: UITableViewDataSource
extension HomeViewController: UITableViewDataSource {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredPokemons.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: PokemonCell = tableview.dequeueReusableCell(indexPath: indexPath)
        
        if let pokemon = filteredPokemons[safe: indexPath.row] { 
            cell.update(with: pokemon)
        } else {
            assertionFailure("could not find pokemon for index \(indexPath.row)")
        }
        
        return cell
    }
}

// MARK: UITableViewDelegate
extension HomeViewController: UITableViewDelegate {
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if let pokemon = filteredPokemons[safe: indexPath.row] {
            interactor.goToDetails(selectedPokemon: pokemon)
        }
    }
}

// MARK: UISearchBarDelegate
extension HomeViewController: UISearchBarDelegate {
    
    // Closes the keyboard when the search button is clicked
    public func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
        searchBar.endEditing(true)
    }
    
    public func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {

        filteredPokemons = pokemons
        
        if searchText.isEmpty == false {

            filteredPokemons = pokemons.filter({ pokemon in
                pokemon.name.contains(searchText.lowercased())
            })

            if filteredPokemons.isEmpty {
                searchBar.endEditing(true)
            }
        }
        self.tableview.reloadData()
    }
}

// MARK: Private setup methods
private extension HomeViewController {
    
    func setup() {
        
        view.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        view.addSubview(stackView)
        
        stackView.addArrangedSubview(searchbar)
        stackView.addArrangedSubview(tableview)
        
        stackView.easy.layout(
            Top(50),
            Left(20),
            Right(20),
            Bottom(50)
        )
    }
}

// MARK: Private builder methods
private extension HomeViewController {
    
    func makeStackView() -> UIStackView {
        let stackView = UIStackView()
        stackView.axis = .vertical
        return stackView
    }
    
    func makeSearchbar() -> UISearchBar {
        let searchbar = UISearchBar()
        searchbar.delegate = self
        searchbar.placeholder = "Search pokemon"
        searchbar.backgroundImage = UIImage()
        return searchbar
    }
    
    func makeTableView() -> UITableView {
        let tableview = UITableView()
        tableview.delegate = self
        tableview.dataSource = self
        tableview.keyboardDismissMode = .onDrag
        tableview.separatorStyle = .none
        tableview.backgroundColor = #colorLiteral(red: 0.968627451, green: 0.968627451, blue: 0.968627451, alpha: 1)
        tableview.registerReusableCell(PokemonCell.self)
        return tableview
    }
}
