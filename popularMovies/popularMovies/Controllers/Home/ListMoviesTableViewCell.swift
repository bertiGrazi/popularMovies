//
//  ListMoviesTableViewCell.swift
//  popularMovies
//
//  Created by Grazielli Berti on 02/06/22.
//

import UIKit

class ListMoviesTableViewCell: UITableViewCell {
    
    static let identifier = "ListMoviesTableViewCell"
    
    let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.layer.cornerRadius = 8
        stackView.backgroundColor = UIColor(red: 0.34, green: 0.01, blue: 0.18, alpha: 1)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let movieNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.backgroundColor = UIColor(red: 0.29, green: 0, blue: 0.15, alpha: 1)
        
        setupView()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    fileprivate func setupView() {
        contentView.addSubview(stackView)
        stackView.addSubview(movieNameLabel)
    }
    
    fileprivate func setupConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),

            
            movieNameLabel.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 20),
            movieNameLabel.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 20),
        ])
    }
    
    func configCell(for moviesList: MoviesDataSource) {
        movieNameLabel.text = moviesList.moviesName
    }
}
