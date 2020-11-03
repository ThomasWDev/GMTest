//
//  UrlManager.swift
//  TestApp
//
//  Created by Thomas Woodfin on 10/29/20.
//  Copyright © 2020 Thomas Woodfin. All rights reserved.
//
import Foundation

#if DEVELOPMENT

let KBasePath = "https://api.github.com" // Staging Server
#else

let KBasePath = "https://api.github.com" // Production Server

#endif

enum OauthPath: String {
    
    case getLast25Commits     = "/repos/ThomasWDev/GMTest/commits?per_page="
}
