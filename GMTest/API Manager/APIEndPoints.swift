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
enum EmployeeDataEndPoint: Endpoint {
    
    case GetEmployeeData
    
    var method: HTTPMethod {
        switch self {
        case .GetEmployeeData:
            return .get
        
        }
    }
    
    var path: String {
        switch self {
        case .GetEmployeeData:
            return KBasePath + OauthPath.getEmployeeList.rawValue
            
        }
    }
    
    var query: [String: Any]  {
        switch self {
        case .GetEmployeeData:
            return [String: Any]()
    
        }
    }
}
