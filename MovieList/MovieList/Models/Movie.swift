//
//  Movie.swift
//  MovieList
//
//  Created by Alexander Totsky on 03.05.2021.
//

import Foundation

struct MovieResponse: Codable {
    let results: [Movie]
}

struct Movie: Codable, Hashable, Identifiable {
    var title: String
    var posterPath: String
    var id: Int
    
    var posterStringURL: String {
        return "https://image.tmdb.org/t/p/w500\(posterPath)"
    }
}
