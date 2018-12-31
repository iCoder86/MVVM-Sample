//
//  ViewController.swift
//  MVVMTest
//
//  Created by Mehul on 31/12/18.
//  Copyright © 2018 Mehul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //MARK:- MVVM Model
    var viewModel = LoginViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.login(mobile: "11111111", countryCode: "+1") { (result) in
            print(result)
        }
    }

}

