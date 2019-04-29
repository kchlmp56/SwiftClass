//
//  ViewController.swift
//  class03
//
//  Created by kech-MacbookPro15 on 2019/4/22.
//  Copyright © 2019 kech-MacbookPro15. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func btnShow(_ sender: Any) {
        showTxt.text = "Hello"
    }
    @IBOutlet var showTxt: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }


}

