//
//  UrlManager.swift
//  TestApp
//
//  Created by Thomas Woodfin on 10/29/20.
//  Copyright © 2020 Thomas Woodfin. All rights reserved.
//
import Foundation

#if DEVELOPMENT

let KBasePath = "" // Staging Server
#else

let KBasePath = "" // Production Server

#endif

enum OauthPath: String {
    
    case getEmployeeList     = ""
}
