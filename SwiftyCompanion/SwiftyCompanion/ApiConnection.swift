//
//  ApiConnection.swift
//  SwiftyCompanion
//
//  Created by Alexandre ROCHARD on 5/4/17.
//  Copyright © 2017 Alexandre ROCHARD. All rights reserved.
//

import UIKit

class ApiConnection: NSObject, UIWebViewDelegate
{
    private let UID = "36affbedb3b4ff95ce9d37389f81668805bff78d2074132bbd815e6d38a80085"
    private let SECRET = "d6036e8fd3c0041ddade2eea6e5c8525bed975d9704386cd477bee4d75776be7"
    
    private func connectApi(webView: UIWebView)
    {
        let accessUrl = URL(string: "https://api.intra.42.fr/oauth/authorize?client_id=\(self.UID)&redirect_uri=https%3A%2F%2Fprofile.intra.42.fr&response_type=code")
        var request = URLRequest(url: accessUrl!)
        request.httpMethod = "GET"
        webView.loadRequest(request as URLRequest)
    }

    init(webView: UIWebView) {
        super.init()
        print("Connection...\n")
        self.connectApi(webView: webView)
    }
    
    
    func searchLogin(login: String) -> infoLogin {
        return infoLogin(name: "arochard", phone: "0606060606", wallet: "510", corrects: "25")
    }
    
}

//        let session = URLSession.shared
//
//        session.dataTask(with: request) {data, response, err in
//                if (err != nil){
//                    print(err!)
//                }else{
//                    do{
//                        let json = try JSONSerialization.jsonObject(with: data!, options: .allowFragments) as! [String : AnyObject]
////                        DispatchQueue.global(qos: .background).async {
////                        }
//                        print(json)
//
//                    }catch let error as NSError{
//                        print(error)
//                    }
//                }
//
//            }.resume()
