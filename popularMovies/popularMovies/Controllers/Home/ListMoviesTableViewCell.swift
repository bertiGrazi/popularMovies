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
    
    let movieImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = 50
        imageView.layer.shadowRadius = 5
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let textstackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.backgroundColor = .white
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    let movieNameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let movieDesciptionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 12)
        label.textColor = .black
        label.numberOfLines = 0
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    let moviesRatingImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleToFill
        imageView.clipsToBounds = true
        imageView.image = UIImageView(image: UIImage(systemName: "star.fill"))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let moviesRatingLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.textColor = .black
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
        stackView.addSubview(movieImageView)
        stackView.addSubview(textstackView)
        textstackView.addSubview(movieNameLabel)
        textstackView.addSubview(moviesRatingLabel)
        textstackView.addSubview(movieDesciptionLabel)
    }
    
    fileprivate func setupConstraints() {
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),

            
            movieImageView.topAnchor.constraint(equalTo: stackView.topAnchor, constant: 40),
            movieImageView.leadingAnchor.constraint(equalTo: stackView.leadingAnchor, constant: 20),
            movieImageView.heightAnchor.constraint(equalToConstant: 100),
            movieImageView.widthAnchor.constraint(equalToConstant: 100),
            
            textstackView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            textstackView.leadingAnchor.constraint(equalTo: movieImageView.leadingAnchor, constant: 100),
            textstackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            textstackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -10),
            
            movieNameLabel.topAnchor.constraint(equalTo: textstackView.topAnchor, constant: 40),
            movieNameLabel.leadingAnchor.constraint(equalTo: textstackView.leadingAnchor, constant: 8),
            
            moviesRatingLabel.topAnchor.constraint(equalTo: textstackView.topAnchor, constant: 20),
            moviesRatingLabel.trailingAnchor.constraint(equalTo: textstackView.trailingAnchor, constant: -8),
            
            movieDesciptionLabel.topAnchor.constraint(equalTo: movieNameLabel.bottomAnchor, constant: 12),
            movieDesciptionLabel.leadingAnchor.constraint(equalTo: textstackView.leadingAnchor, constant: 8),
            movieDesciptionLabel.trailingAnchor.constraint(equalTo: textstackView.trailingAnchor, constant: -2),
        ])
    }
    
    func configCell(for moviesList: MoviesDataSource) {
        movieImageView.image = moviesList.moviesImages.image
        movieNameLabel.text = moviesList.moviesName
        movieDesciptionLabel.text = moviesList.moviesDescriptions
        moviesRatingLabel.text = "\(moviesList.moviesRating)"
    }
}
