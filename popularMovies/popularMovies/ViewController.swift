//
//  ViewController.swift
//  popularMovies
//
//  Created by Grazielli Berti on 31/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    let scrowView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
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
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 0.29, green: 0, blue: 0.15, alpha: 1)
        scrowView.backgroundColor = UIColor(red: 0.29, green: 0, blue: 0.15, alpha: 1)
        
        setupView()
        setupConstrains()
    }
    
    fileprivate func setupView() {
        view.addSubview(scrowView)
        scrowView.addSubview(titleLabel)
        scrowView.addSubview(movieTextField)
    }
    
    fileprivate func setupConstrains() {
        NSLayoutConstraint.activate([
            scrowView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            scrowView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            scrowView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            scrowView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0),
            
            titleLabel.topAnchor.constraint(equalTo: scrowView.topAnchor, constant: 64),
            titleLabel.centerXAnchor.constraint(equalTo: scrowView.centerXAnchor, constant: 0),
            
            movieTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 12),
            movieTextField.centerXAnchor.constraint(equalTo: scrowView.centerXAnchor, constant: 0),
            movieTextField.widthAnchor.constraint(equalToConstant: 250),
        ])
    }
}

