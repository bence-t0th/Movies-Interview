//
//  Genres.swift
//  Movies
//
//  Created by Bence Tóth on 09/01/2024.
//

import Foundation

struct Genres: Codable {
    let genres: [Genre]
}

struct Genre: Codable {
    let id: Int
    let name: String
}
