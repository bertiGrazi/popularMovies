//
//  ListMoviesModel.swift
//  popularMovies
//
//  Created by Grazielli Berti on 02/06/22.
//

import Foundation

class ListMoviesModel: ListMoviesProtocol {
    func fetchMoviesList() -> [MoviesDataSource] {
        return [
            MoviesDataSource(moviesName: "The Batman (2022)"),
            MoviesDataSource(moviesName: "The Batman (2022)"),
            MoviesDataSource(moviesName: "The Batman (2022)"),
            MoviesDataSource(moviesName: "The Batman (2022)"),
            MoviesDataSource(moviesName: "The Batman (2022)"),
            MoviesDataSource(moviesName: "The Batman (2022)"),
            MoviesDataSource(moviesName: "The Batman (2022)"),
            MoviesDataSource(moviesName: "The Batman (2022)"),
            MoviesDataSource(moviesName: "The Batman (2022)"),
            MoviesDataSource(moviesName: "The Batman (2022)"),
        ]
    }
}
