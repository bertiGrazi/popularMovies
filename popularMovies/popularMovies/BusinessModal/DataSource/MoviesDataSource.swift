//
//  MoviesDataSource.swift
//  popularMovies
//
//  Created by Grazielli Berti on 02/06/22.
//

import Foundation
import UIKit

class MoviesDataSource {
    
    var moviesImages = UIImageView()
    let moviesName: String
    let moviesDescriptions: String
    let moviesRating: Double
    
    init(moviesImages: UIImageView, moviesName: String, moviesDescriptions: String, moviesRating: Double) {
        self.moviesImages = moviesImages
        self.moviesName = moviesName
        self.moviesDescriptions = moviesDescriptions
        self.moviesRating = moviesRating
    }
}
