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
    
    case getMovieDataList
    
    var method: HTTPMethod {
        switch self {
        case .getMovieDataList:
            return .get
        
        }
    }
    
    var path: String {
        switch self {
        case .getMovieDataList:
            return KBasePath + OauthPath.getMovieDataList.rawValue
            
        }
    }
    
    var query: [String: Any]  {
        switch self {
        case .getMovieDataList:
            return [String: Any]()
    
        }
    }
}
