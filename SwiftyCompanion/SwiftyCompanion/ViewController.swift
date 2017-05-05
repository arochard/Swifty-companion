//
//  ViewController.swift
//  SwiftyCompanion
//
//  Created by Alexandre ROCHARD on 5/2/17.
//  Copyright © 2017 Alexandre ROCHARD. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIWebViewDelegate {
    
    @IBOutlet weak var webView: UIWebView!
    private var Api: ApiConnection?

    override func viewDidLoad() {
        super.viewDidLoad()
        self.Api = ApiConnection(webView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showDetailLogin"{
            if let view = segue.destination as? DetailViewController{
                if let r = sender as? infoLogin{
                    view.infoUser = r
                }
            }
        }
    }

    @IBAction func searchLogin(_ sender: UIButton) {
        if Api != nil{
            let result = Api?.searchLogin(login: "arochard")
            self.performSegue(withIdentifier: "showDetailLogin", sender: result)
        }
    }

}

