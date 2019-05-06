//
//  MyBrowserViewController.swift
//  class04
//
//  Created by kech-MacbookPro15 on 2019/5/6.
//  Copyright © 2019 kech-MacbookPro15. All rights reserved.
//

import UIKit

class MyBrowserViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillAppear(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillDisappear(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)

        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardDidHideNotification, object: nil)
    }
    
    @objc func keyboardWillAppear(notification:NSNotification?) {
        print("keyboardWillAppear")
    }

    @objc func keyboardWillDisappear(notification:NSNotification?){
        print("keyboardWillDisappear")

    }

}
