//
//  MovieDetailsScreenViewModel.swift
//  Movies
//
//  Created by Foundation on 2022. 02. 14..
//

import Foundation
import Combine

class MovieDetailsScreenViewModel: ObservableObject, MovieDetailsScreenViewModelProtocol {
    @Published var movie: MovieVM
    var cancellable = Set<AnyCancellable>()
    
    init(movie: MovieVM) {
        self.movie = movie
    }

    func markMovie() {
        var newMovie = movie
        if newMovie.isMarked != nil {
            newMovie.isMarked?.toggle()
        } else {
            newMovie.isMarked = true
        }
        Just(newMovie).assign(to: &$movie)
    }
}
