//
//  MovieListItem.swift
//  Movies
//
//  Created by Foundation on 2022. 02. 14..
//

import SwiftUI

struct MovieListItem: View {

    @State var movie: MovieVM
    var genres: [Genre]
    
    var genreString: String {
        var str = ""
        for genre_id in movie.genre_ids {
            if let genre = genres.first(where: { $0.id == genre_id })?.name {
                str.append("\(genre), ")
            }
        }
        return String(str.dropLast(2))
    }

    var body: some View {
        HStack(spacing: 16) {
            ZStack {
                AsyncImage(url: "https://image.tmdb.org/t/p/w200\(movie.poster_path)")
                    .frame(width: 80, height: 80 * 1.7778)
                    .clipped()
            }
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    if movie.isMarked ?? false {
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundColor(.yellow)
                            .shadow(color: .yellow, radius: 4)
                    }
                    Text(movie.title)
                        .font(.headline)
                        .lineLimit(2)
                }
                Text(genreString)
                    .font(.footnote)
                    .foregroundColor(.gray)
                    .lineLimit(1)
                HStack {
                    ProgressView(value: movie.vote_average / 10)
                    Text(String(format: "%.1f", movie.vote_average))
                        .font(.headline)
                        .foregroundColor(.gray)
                }
                .layoutPriority(1)
            }
        }
    }
}


struct MovieListItem_Previews: PreviewProvider {
    static var previews: some View {
        MovieListItem(movie: previewMovies[1], genres: previewGenres)
    }
}

