//
//  ViewController.swift
//  Storyboard
//
//  Created by 김동영 on 2018. 5. 21..
//  Copyright © 2018년 김동영. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var _messageLabel: UILabel!
    @IBOutlet weak var _nameBox: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func button_touchDown(_ sender: Any) {
        _messageLabel.text = "Hello, I am " + _nameBox.text!
    }
}
