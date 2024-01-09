//
//  API.swift
//  Movies
//
//  Created by Bence Tóth on 09/01/2024.
//

import Foundation
import Combine

struct API {
    static let baseURL = "https://api.themoviedb.org/3"
    
    static func getMovies() -> AnyPublisher<MovieList, Error> {
         URLSession.shared.dataTaskPublisher(for: URL(string: "\(baseURL)/discover/movie?api_key=\(APIkey)")!)
            .map { $0.data }
            .decode(type: MovieList.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
    
    static func getGenres() -> AnyPublisher<Genres, Error> {
        URLSession.shared.dataTaskPublisher(for: URL(string: "\(baseURL)/genre/movie/list?api_key=\(APIkey)")!)
            .map { $0.data }
            .decode(type: Genres.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}

