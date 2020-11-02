//
//  Constants.swift
//  TestApp
//
//  Created by Thomas Woodfin on 10/29/20.
//  Copyright © 2020 Thomas Woodfin. All rights reserved.
//

import UIKit

let IS_IPHONE_X = (UIScreen.main.nativeBounds.height == 2436)

struct Constants {
    static let headerToken      = "headerToken"
    static let lastSavedId      = "lastSaveId"
    
    // database value
    static let employeeId          = "eId"
    static let employeeName        = "eName"
    static let employeeImage       = "eImage"
    static let employeeAge         = "eAge"
    static let employeeSalary      = "eSalary"
    static let employeeRating      = "eRating"
    static let dbName              = "TestApp"
    static let dbTableName         = "EmployeeData"

}





