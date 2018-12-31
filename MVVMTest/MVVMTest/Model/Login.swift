//
//  Model.swift
//  MVVMTest
//
//  Created by Mehul on 31/12/18.
//  Copyright © 2018 Mehul. All rights reserved.
//

import Foundation

struct Login: BaseModel {
    
    var countryCode: String?
    var mobileNumber: String?
    var userType: String?
    var oSVersion: String?
    var deviceModel: String?
    
    struct Response: BaseModel, Equatable {
        var user: User?
        
        static func == (lhs: Response, rhs: Response) -> Bool {
            return lhs.user?.userId == rhs.user?.userId
        }
    }
    
    struct request: BaseModel, Codable {
        var countryCode: String
        var mobileNumber: String
        var userType: String
        var oSVersion: String
        var deviceModel: String
    }
}

//struct CompleteProfile: BaseModel {
//    var userId: String?
//    var fullName: String?
//
//    struct Response: BaseModel, Equatable {
//        var responseMessage: String?
//
//        static func == (lhs: Response, rhs: Response) -> Bool {
//            return lhs.responseMessage == rhs.responseMessage
//        }
//    }
//
//    struct request: BaseModel {
//        var userId: String?
//        var fullName: String?
//    }
//}
