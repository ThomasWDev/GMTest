//
//  DashboardVM.swift
//  GMTest
//
//  Created by Thomas Woodfin Mahmud on 11/3/20.
//  Copyright © 2020 Thomas Woodfin. All rights reserved.
//

import Foundation
import SVProgressHUD
import SwiftyJSON
import ObjectMapper

class DashboardVM{
    
    var movieList: [Movie]?
    
    func getMoviesData(completion: @escaping (_ success: Bool) -> Void){
        SVProgressHUD.show()
        APIClient.shared.objectAPICall(apiEndPoint: GithubDataEndPoint.getMovieDataList, modelType: MovieResponse.self) { (response) in
            switch response {
            case .success(let value):
                SVProgressHUD.dismiss()
                self.movieList = value.movieList
                completion(true)
            case .failure((let code, let data, let err)):
                SVProgressHUD.dismiss()
                print("code = \(code)")
                print("data = \(String(describing: data))")
                print("error = \(err.localizedDescription)")
                completion(false)
            }
        }
    }
    
}
