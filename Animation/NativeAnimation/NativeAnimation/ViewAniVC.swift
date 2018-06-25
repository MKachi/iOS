//
//  UIViewAniVC.swift
//  NativeAnimation
//
//  Created by 김동영 on 2018. 6. 23..
//  Copyright © 2018년 김동영. All rights reserved.
//

import UIKit

class ViewAniVC: UIViewController {
    @IBOutlet weak var _button1: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        UIView.animate(withDuration: 2.0, delay: 0.0, animations: {
            self.view.backgroundColor = UIColor.blue
        }, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
