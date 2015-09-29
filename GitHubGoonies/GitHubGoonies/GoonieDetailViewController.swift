//
//  GoonieDetailViewController.swift
//  GitHubGoonies
//
//  Created by Anjel Villafranco on 9/29/15.
//  Copyright © 2015 Anjel Villafranco. All rights reserved.
//

import UIKit

class GoonieDetailViewController: UIViewController {

    var userIndex: Int!
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let user = users[userIndex]
        
        usernameLabel.text = user["login"] as? String

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
