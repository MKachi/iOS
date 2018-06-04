//
//  ViewController.swift
//  SnapKitUI
//
//  Created by 김동영 on 2018. 6. 3..
//  Copyright © 2018년 김동영. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    var _nameBox : UITextField!
    var _messageLabel: UILabel!
    var _button : UIButton!
    var _nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        
        setUpUI();
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func setUpUI() {
        _nameLabel = UILabel()
        _nameLabel.translatesAutoresizingMaskIntoConstraints = false
        _nameLabel.text = "Name : "
        view.addSubview(_nameLabel)
        
        _button = UIButton()
        _button.translatesAutoresizingMaskIntoConstraints = false
        _button.setTitle("Button", for: UIControlState.normal)
        _button.setTitleColor(UIColor.blue, for: UIControlState.normal)
        _button.addTarget(self, action: #selector(self.button_touchDown(_:)), for: UIControlEvents.touchDown)
        view.addSubview(_button)
        
        _nameBox = UITextField()
        _nameBox.translatesAutoresizingMaskIntoConstraints = false
        _nameBox.borderStyle = UITextBorderStyle.roundedRect
        view.addSubview(_nameBox)
        
        _messageLabel = UILabel()
        _messageLabel.translatesAutoresizingMaskIntoConstraints = false
        _messageLabel.textAlignment = NSTextAlignment.center
        _messageLabel.text = "Hello, I am SnapKit"
        view.addSubview(_messageLabel)
        
        constraints()
    }
    
    func constraints() {
        _messageLabel.snp.makeConstraints { (make) in
            make.centerX.equalTo(view.snp.centerX)
            make.trailing.leading.equalTo(view.snp.trailing).offset(10)
            make.bottom.equalTo(_nameBox.snp.top).offset(-8)
        }
        
        _nameLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(view.snp.leading).offset(83)
            make.centerY.equalTo(view.snp.centerY)
        }
        
        _nameBox.snp.makeConstraints { (make) in
            make.centerY.equalTo(view.snp.centerY)
            make.leading.equalTo(_nameLabel.snp.trailing).offset(8)
            make.trailing.equalTo(view.snp.trailing).offset(-83)
            make.width.greaterThanOrEqualTo(141)
        }
        
        _button.snp.makeConstraints { (make) in
            make.centerX.equalTo(view.snp.centerX)
            make.top.equalTo(_nameBox.snp.bottom).offset(8)
        }
    }
    
    @objc func button_touchDown(_ sender : UIButton) {
        _messageLabel.text = "Hello, I am " + _nameBox.text!
    }
}
