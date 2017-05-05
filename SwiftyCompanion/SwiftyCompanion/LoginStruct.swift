//
//  LoginStruct.swift
//  SwiftyCompanion
//
//  Created by Alexandre ROCHARD on 5/5/17.
//  Copyright © 2017 Alexandre ROCHARD. All rights reserved.
//

import Foundation
import UIKit

struct infoLogin {
    let name: String
    let phone: String
    let wallet: String
    let corrects: String
//    let image: UIImage
    
    init(name: String, phone: String, wallet: String, corrects: String/*, image: UIImage*/) {
        self.name = name
        self.phone = phone
        self.wallet = wallet
        self.corrects = corrects
//        self.image = image
    }
}
