//
//  ListMoviesViewModel.swift
//  popularMovies
//
//  Created by Grazielli Berti on 02/06/22.
//

import Foundation

class ListMoviesViewModel {
    private let bussinessModel: ListMoviesProtocol = ListMoviesModel()
    
    func fetchMoviesList() -> [MoviesDataSource] {
        return bussinessModel.fetchMoviesList()
    }
}
