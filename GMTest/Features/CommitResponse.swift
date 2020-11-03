//
//  CommitResponse.swift
//  GMTest
//
//  Created by Shahriar Mahmud on 11/3/20.
//  Copyright © 2020 Thomas Woodfin. All rights reserved.
//

import Foundation
import ObjectMapper

struct CommitResponse: Mappable{
    var commitList: [Commit]?
    init?(map: Map){
        
    }
    
    mutating func mapping(map: Map) {
        commitList <- map[""]
    }
}

struct Commit: Mappable{
    var authorName: String?
    var authorImage: String?
    var commitHash: String?
    var commitMessage: String?
    
    init?(map: Map){
        
    }
    
    mutating func mapping(map: Map) {
        authorName <- map["commit.author.name"]
        commitHash <- map["tree.sha"]
        commitMessage <- map["commit.message"]
        authorImage <- map["author.avatar_url"]
    }
    
}

