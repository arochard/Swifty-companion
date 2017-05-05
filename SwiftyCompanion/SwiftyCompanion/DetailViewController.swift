//
//  DetailViewController.swift
//  SwiftyCompanion
//
//  Created by Alexandre ROCHARD on 5/5/17.
//  Copyright © 2017 Alexandre ROCHARD. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    var infoUser: infoLogin?
    
    @IBOutlet weak var imgProfile: UIImageView!
    
    @IBOutlet weak var loginLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    @IBOutlet weak var walletNb: UILabel!
    @IBOutlet weak var correctNb: UILabel!
    
    @IBOutlet weak var progressLevel: UIProgressView!
    @IBOutlet weak var levelNiv: UILabel!
    
    @IBOutlet weak var srollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if infoUser != nil
        {
            self.loginLabel.text = infoUser?.name
            self.phoneLabel.text = infoUser?.phone
            self.walletNb.text = infoUser?.wallet
            self.correctNb.text = infoUser?.corrects
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
