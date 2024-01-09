//
//  MoviesViewModel.swift
//  Movies
//
//  Created by Foundation on 2022. 02. 14..
//

import Foundation
import Combine

class MoviesScreenViewModel: ObservableObject, MoviesScreenViewModelProtocol {
    @Published var movies: [MovieVM] = []
    @Published var genres: [Genre] = []
    
    var cancellables = Set<AnyCancellable>()
    
    init() {
        API.getGenres()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { he in
                print(he)
            }, receiveValue: { resp in
                self.genres = resp.genres
                print(resp)
            })
            .store(in: &cancellables)
        
        API.getMovies()
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { he in
                print(he)
            }, receiveValue: { resp in
                self.movies = resp.results
                print(resp)
            })
            .store(in: &cancellables)
    }
}
