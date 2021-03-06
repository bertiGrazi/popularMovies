//
//  ViewController.swift
//  popularMovies
//
//  Created by Grazielli Berti on 31/05/22.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - Variable
    let viewModel = ListMoviesViewModel()
    
    //MARK: - View
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Filmes Populares"
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let movieTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Digite aqui um filme"
        textField.borderStyle = UITextField.BorderStyle.roundedRect
        textField.keyboardType = UIKeyboardType.default
        textField.returnKeyType = UIReturnKeyType.done
        textField.backgroundColor = UIColor(red: 0.67, green: 0.67, blue: 0.67, alpha: 0.7)
        textField.textColor = .white
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.backgroundColor = .blue
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let checkBox = CheckBoxButton(frame: CGRect(x: 0, y: 0, width: 30, height: 30))
    
    let showMoviesFavoritesLabel: UILabel = {
        let label = UILabel()
        label.text = "Mostrar meus filmes favoritos"
        label.textColor = .white
        label.textAlignment = .center
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let moviesTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = UIColor(red: 0.29, green: 0, blue: 0.15, alpha: 1)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.29, green: 0, blue: 0.15, alpha: 1)
        
        moviesTableView.register(ListMoviesTableViewCell.self, forCellReuseIdentifier: ListMoviesTableViewCell.identifier)
        
        moviesTableView.dataSource = self
        moviesTableView.delegate = self
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector(didTapCheckBox))
        checkBox.addGestureRecognizer(gesture)
        
        setupView()
        setupConstrains()
    }
    
    @objc func didTapCheckBox() {
        checkBox.togled()
    }

    
    fileprivate func setupView() {
        view.addSubview(titleLabel)
        view.addSubview(movieTextField)
        view.addSubview(stackView)
        stackView.addArrangedSubview(checkBox)
        view.addSubview(showMoviesFavoritesLabel)
        view.addSubview(moviesTableView)
    }
    
    fileprivate func setupConstrains() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 64),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            
            movieTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 12),
            movieTextField.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0),
            movieTextField.widthAnchor.constraint(equalToConstant: 300),

            stackView.topAnchor.constraint(equalTo: movieTextField.bottomAnchor, constant: 16),
            stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70),
            stackView.heightAnchor.constraint(equalToConstant: 30),
            stackView.widthAnchor.constraint(equalToConstant: 30),
            
            showMoviesFavoritesLabel.topAnchor.constraint(equalTo: movieTextField.bottomAnchor, constant: 24),
            showMoviesFavoritesLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 40),
            
            moviesTableView.topAnchor.constraint(equalTo: stackView.bottomAnchor, constant: 12),
            moviesTableView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            moviesTableView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            moviesTableView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
        ])
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.fetchMoviesList().count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: ListMoviesTableViewCell.identifier, for: indexPath) as? ListMoviesTableViewCell else { return UITableViewCell() }
        
        cell.configCell(for: viewModel.fetchMoviesList()[indexPath.row])
        return cell
    }
}
