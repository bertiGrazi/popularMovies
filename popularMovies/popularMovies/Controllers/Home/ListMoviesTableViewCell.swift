//
//  ListMoviesTableViewCell.swift
//  popularMovies
//
//  Created by Grazielli Berti on 02/06/22.
//

import UIKit

class ListMoviesTableViewCell: UITableViewCell {
    
    static let identifier = "ListMoviesTableViewCell"
    
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
        contentView.addSubview(movieNameLabel)
    }
    
    fileprivate func setupConstraints() {
        NSLayoutConstraint.activate([
            movieNameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            movieNameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
        
        ])
    }
    
    func configCell(for moviesList: MoviesDataSource) {
        movieNameLabel.text = moviesList.moviesName
    }
}
