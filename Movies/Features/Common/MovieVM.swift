//
//  MovieVM.swift
//  Movies
//
//  Created by Foundation on 2022. 02. 14..
//

import Foundation

struct MovieVM: Identifiable, Codable {
    let id: Int
    let title: String
    let genre_ids: [Int]
    let overview: String
    let poster_path: String
    let vote_average: Float
    
    var isMarked: Bool? = false
    var genres: String? = ""
}

struct MovieList: Codable {
    let page: Int
    let results: [MovieVM]
    let totalPages, totalResults: Int

    enum CodingKeys: String, CodingKey {
        case page, results
        case totalPages = "total_pages"
        case totalResults = "total_results"
    }
}
