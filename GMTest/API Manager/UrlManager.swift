//
//  UrlManager.swift
//  TestApp
//
//  Created by Thomas Woodfin on 10/29/20.
//  Copyright © 2020 Thomas Woodfin. All rights reserved.
//
import Foundation

#if DEVELOPMENT

let KBasePath = "https://api.themoviedb.org" // Staging Server
#else

let KBasePath = "https://api.themoviedb.org" // Production Server

#endif

enum OauthPath: String {
    
    case getMovieDataList     = "/3/movie/now_playing?language=en-US&page=undefined&api_key=55957fcf3ba81b137f8fc01ac5a31fb5"
}
