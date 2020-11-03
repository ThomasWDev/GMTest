//
//  APIEndPoints.swift
//  TestApp
//
//  Created by Thomas Woodfin on 10/29/20.
//  Copyright © 2020 Thomas Woodfin. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

//MARK:- EmployeeData
enum GithubDataEndPoint: Endpoint {
    
    case getLast25Commits(limit: Int)
    
    var method: HTTPMethod {
        switch self {
        case .getLast25Commits:
            return .get
        
        }
    }
    
    var path: String {
        switch self {
        case .getLast25Commits(let limit):
            return KBasePath + OauthPath.getLast25Commits.rawValue + String(limit)
            
        }
    }
    
    var query: [String: Any]  {
        switch self {
        case .getLast25Commits:
            return [String: Any]()
    
        }
    }
}
