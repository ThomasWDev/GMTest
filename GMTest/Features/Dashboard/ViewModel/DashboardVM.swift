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
    
    var commitList: [Commit]?
    
    func getCommits(completion: @escaping (_ success: Bool) -> Void){
        SVProgressHUD.show()
        APIClient.shared.makeAPICall(apiEndPoint: GithubDataEndPoint.getLast25Commits(limit: 25)) { (response) in
            switch response {
            case .success(let value):
                SVProgressHUD.dismiss()
                let json = JSON(value).arrayObject

                guard let jsonDic = json as? [[String:AnyObject]] else {completion(false); return;}
                self.commitList = Mapper<Commit>().mapArray(JSONArray: jsonDic)
                
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
