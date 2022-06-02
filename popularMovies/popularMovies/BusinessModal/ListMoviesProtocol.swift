//
//  ListMoviesProtocol.swift
//  popularMovies
//
//  Created by Grazielli Berti on 02/06/22.
//

import Foundation

protocol ListMoviesProtocol {
    func fetchMoviesList() -> [MoviesDataSource]
}
