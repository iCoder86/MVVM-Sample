//
//  LoginViewModel.swift
//  MVVMTest
//
//  Created by Mehul on 31/12/18.
//  Copyright © 2018 Mehul. All rights reserved.
//

import Foundation

class LoginViewModel {
    
    func login(mobile: String,countryCode:String, completion:@escaping(_ loginUserId:String)->()) {
        let param = Login.request.init(countryCode: countryCode,
                                       mobileNumber: mobile,
                                       userType: "1",
                                       oSVersion: "iOS 12",
                                       deviceModel: "iPhone X")
        loginWith(param: param, success: { (result) in
            print("1 Success \(result)")
        }) { (error) in
            print("2 Failure")
        }
    }
    
}
