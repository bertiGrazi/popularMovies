//
//  ListMoviesModel.swift
//  popularMovies
//
//  Created by Grazielli Berti on 02/06/22.
//

import Foundation
import UIKit

class ListMoviesModel: ListMoviesProtocol {
    func fetchMoviesList() -> [MoviesDataSource] {
        return [
            MoviesDataSource(
                moviesImages: UIImageView(image: UIImage(named: "thebatman")),
                moviesName: "The Batman (2022)",
                moviesDescriptions: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard....",
                moviesRating: 8.6),
            
            MoviesDataSource(
                moviesImages: UIImageView(image: UIImage(named: "thebatman")),
                moviesName: "The Batman (2022)",
                moviesDescriptions: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard....",
                moviesRating: 8.6),
            
            MoviesDataSource(
                moviesImages: UIImageView(image: UIImage(named: "thebatman")),
                moviesName: "The Batman (2022)",
                moviesDescriptions: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard....",
                moviesRating: 8.6),
            
            MoviesDataSource(
                moviesImages: UIImageView(image: UIImage(named: "thebatman")),
                moviesName: "The Batman (2022)",
                moviesDescriptions: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard....",
                moviesRating: 8.6),
            
            MoviesDataSource(
                moviesImages: UIImageView(image: UIImage(named: "thebatman")),
                moviesName: "The Batman (2022)",
                moviesDescriptions: "Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum has been the industry's standard....",
                moviesRating: 8.6),
        ]
    }
}
