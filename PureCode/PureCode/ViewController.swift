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
    
    func setUpUI()
    {
        _nameLabel = UILabel(frame: CGRect(x: 83, y: 324.5, width: 59, height: 21))
        _nameLabel.text = "Name : "
        view.addSubview(_nameLabel)
        
        _button = UIButton(frame: CGRect(x: 164.5, y: 356.6, width: 55, height: 30))
        _button.setTitle("Button", for: UIControlState.normal)
        _button.setTitleColor(UIColor.blue, for: UIControlState.normal)
        _button.addTarget(self, action: #selector(self.button_touchDown(_:)), for: UIControlEvents.touchDown)
        view.addSubview(_button)
        
        _nameBox = UITextField(frame: CGRect(x: 150, y: 318.5, width: 141, height: 30))
        _nameBox.borderStyle = UITextBorderStyle.roundedRect
        view.addSubview(_nameBox)
        
        _messageLabel = UILabel(frame: CGRect(x: 10, y: 289.5, width: 355, height: 21))
        _messageLabel.textAlignment = NSTextAlignment.center
        _messageLabel.text = "Hello, I am PureCode"
        view.addSubview(_messageLabel)
        
        constraints(margins: view.layoutMarginsGuide);
    }
    
    func constraints(margins : UILayoutGuide)
    {
        _messageLabel.centerXAnchor.constraint(equalTo: margins.centerXAnchor, constant: 0).isActive = true
        _messageLabel.centerXAnchor.constraint(equalTo: _button.centerXAnchor, constant: 0).isActive = true
        _messageLabel.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 10).isActive = true
        _messageLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 10).isActive = true
        _messageLabel.bottomAnchor.constraint(equalTo: _nameLabel.topAnchor, constant: 14).isActive = true
        _messageLabel.bottomAnchor.constraint(equalTo: _nameBox.topAnchor).isActive = true
        
        _nameBox.trailingAnchor.constraint(equalTo: margins.trailingAnchor, constant: 84).isActive = true
        _nameBox.leadingAnchor.constraint(equalTo: _nameLabel.trailingAnchor).isActive = true
        _nameBox.bottomAnchor.constraint(equalTo: _button.topAnchor).isActive = true
        _nameBox.topAnchor.constraint(equalTo: _messageLabel.bottomAnchor).isActive = true
        _nameBox.centerYAnchor.constraint(equalTo: margins.centerYAnchor, constant: 0).isActive = true
        
        _nameLabel.trailingAnchor.constraint(equalTo: margins.trailingAnchor).isActive = true
        _nameLabel.leadingAnchor.constraint(equalTo: margins.leadingAnchor, constant: 83).isActive = true
        _nameLabel.topAnchor.constraint(equalTo: margins.topAnchor, constant: 14).isActive = true
        
        _button.centerXAnchor.constraint(equalTo: _messageLabel.centerXAnchor).isActive = true
        _button.topAnchor.constraint(equalTo: _nameBox.bottomAnchor).isActive = true
        
        _messageLabel.updateConstraints()
        _nameBox.updateConstraints()
        _nameLabel.updateConstraints()
        _button.updateConstraints()
    }
    
    @objc func button_touchDown(_ sender : UIButton) {
        _messageLabel.text = "Hello, I am " + _nameBox.text!
    }
}
