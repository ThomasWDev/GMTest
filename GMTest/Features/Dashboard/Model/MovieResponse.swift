//
//  MovieResponse.swift
//  GMTest
//
//  Created by Shahriar Mahmud on 11/6/20.
//  Copyright © 2020 Thomas Woodfin. All rights reserved.
//

import Foundation
import ObjectMapper

struct MovieResponse: Mappable{
    
    var movieList: [Movie]?
    init?(map: Map){
        
    }
    
    mutating func mapping(map: Map) {
        movieList <- map["results"]
    }
}

struct Movie: Mappable{
    
    var popularity: Double?
    
    var vote_count: Int?
    var video: Bool?
    var poster_path: String?
    var id: Int?
    var adult: Bool?
    
    var backdrop_path: String?
    var original_language: String?
    var original_title: String?
    var title: String?
    
    var vote_average: Double?
    var overview: String?
    var release_date: String?
    
    init?(map: Map){
        
    }
    
    mutating func mapping(map: Map) {
        popularity <- map["popularity"]
        vote_count <- map["vote_count"]
        video <- map["video"]
        poster_path <- map["poster_path"]
        id <- map["id"]
        commitList <- map[""]
        commitList <- map[""]
        commitList <- map[""]
        commitList <- map[""]
        commitList <- map[""]
        commitList <- map[""]
        commitList <- map[""]
        commitList <- map[""]
    }
}
