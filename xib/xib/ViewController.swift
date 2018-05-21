//
//  ViewController.swift
//  xib
//
//  Created by 김동영 on 2018. 5. 21..
//  Copyright © 2018년 김동영. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var _nameBox: UITextField!
    @IBOutlet weak var _messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func button_touchDown(_ sender: Any) {
        _messageLabel.text = "Hello, I am " + _nameBox.text!
    }
}
