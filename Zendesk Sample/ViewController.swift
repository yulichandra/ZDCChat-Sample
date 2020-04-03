//
//  ViewController.swift
//  Zendesk Sample
//
//  Created by Yuli Chandra on 03/04/20.
//  Copyright © 2020 Yuli Chandra. All rights reserved.
//

import UIKit
import ZDCChat

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Sample"
    }

    @IBAction func buttonTapped(_ sender: Any) {
        ZendeskManager.showChat(in: self.navigationController, category: "Top Up", subCategory: "Cara Top Up")
    }

}

