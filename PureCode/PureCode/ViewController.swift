//
//  ViewController.swift
//  PureCode
//
//  Created by 김동영 on 2018. 5. 21..
//  Copyright © 2018년 김동영. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var _nameBox : UITextField!
    var _messageLabel : UILabel!
    var _button : UIButton!
    var _nameLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        // 기본값이 true이다.
        // 제약 조건을 프로그래밍 할 땐 오토리사이징을 꺼줘야한다.
        // 사용자가 지정한 제약조건과 충돌하여 문제가 생김
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
        _messageLabel.text = "Hello, I am PureCode"
        view.addSubview(_messageLabel)
        
        constraints(margins: view.layoutMarginsGuide)
    }
    
    func constraints(margins : UILayoutGuide) {
        _messageLabel.centerXAnchor.constraint(equalTo: margins.centerXAnchor, constant: 0).isActive = true
        _messageLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 10).isActive = true
        _messageLabel.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: -10).isActive = true
        _messageLabel.bottomAnchor.constraint(equalTo: _nameBox.topAnchor, constant: -8).isActive = true
        
        _nameBox.centerYAnchor.constraint(equalTo: margins.centerYAnchor, constant: 0).isActive = true
        _nameBox.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: -84).isActive = true

        _nameLabel.trailingAnchor.constraint(equalTo: _nameBox.leadingAnchor, constant: -8).isActive = true
        _nameLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 83).isActive = true
        _nameLabel.topAnchor.constraint(equalTo: _messageLabel.bottomAnchor, constant: 8).isActive = true
        
        _button.centerXAnchor.constraint(equalTo: margins.centerXAnchor, constant: 0).isActive = true
        _button.topAnchor.constraint(equalTo: _nameBox.bottomAnchor, constant: 8).isActive = true
    }
    
    @objc func button_touchDown(_ sender : UIButton) {
        _messageLabel.text = "Hello, I am " + _nameBox.text!
    }
}
