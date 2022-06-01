//
//  ViewController.swift
//  popularMovies
//
//  Created by Grazielli Berti on 31/05/22.
//

import UIKit

class ViewController: UIViewController {
//    let scrowView: UIScrollView = {
//        let scrollView = UIScrollView()
//        scrollView.translatesAutoresizingMaskIntoConstraints = false
//        return scrollView
//    }()
    
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
        textField.backgroundColor = UIColor(red: 0.67, green: 0.67, blue: 0.67, alpha: 0.5)
        textField.textColor = .white
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.backgroundColor = .white
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.29, green: 0, blue: 0.15, alpha: 1)
        
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
        ])
    }
}

