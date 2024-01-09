//
//  PreviewMovies.swift
//  Movies
//
//  Created by Foundation on 2022. 02. 14..
//

import Foundation

let previewMovies: [MovieVM] = [
    .init(
        id: Int.random(in: 1..<100),
        title: "The Croods: A New Age",
        genre_ids: [1, 2],
        overview: "Searching for a safer habitat, the prehistoric Crood family discovers an idyllic, walled-in paradise that meets all of its needs.",
        poster_path: "/tbVZ3Sq88dZaCANlUcewQuHQOaE.jpg",
        vote_average: 7.6,
        isMarked: false
    ),
    .init(
        id: Int.random(in: 1..<100),
        title: "Monster Hunter",
        genre_ids: [1, 2],
        overview: "A portal transports Cpt. Artemis and an elite unit of soldiers to a strange world where powerful monsters rule with deadly ferocity. Faced with relentless danger, the team encounters a mysterious hunter who may be their only hope to find a way home.",
        poster_path: "/1UCOF11QCw8kcqvce8LKOO6pimh.jpg",
        vote_average: 7.1,
        isMarked: true
    ),
    .init(
        id: Int.random(in: 1..<100),
        title: "Deathstroke: Knights & Dragons - The Movie",
        genre_ids: [1, 2],
        overview: "The assassin Deathstroke tries to save his family from the wrath of H.I.V.E. and the murderous Jackal.",
        poster_path: "/vFIHbiy55smzi50RmF8LQjmpGcx.jpg",
        vote_average: 6.9,
        isMarked: false
    )
]

let previewGenres: [Genre] = [Genre(id: 1, name: "Action"), Genre(id: 2, name: "Comedy")]
