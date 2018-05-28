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
        let margins = view.layoutMarginsGuide
        
        let nameLabel = UILabel(frame: CGRect(x: 83, y: 324.5, width: 59, height: 21))
        nameLabel.text = "Name : "
        nameLabel.trailingAnchor.constraint(
            equalTo: margins.trailingAnchor
        )
        nameLabel.leadingAnchor.constraint(
            equalTo: margins.leadingAnchor,
            constant: 83
        )
        nameLabel.topAnchor.constraint(
            equalTo: margins.topAnchor,
            constant: 14
        )
        view.addSubview(nameLabel)
        
        _nameBox = UITextField(frame: CGRect(x: 150, y: 318.5, width: 141, height: 30))
        _nameBox.translatesAutoresizingMaskIntoConstraints = false
        _nameBox.trailingAnchor.constraint(
            equalTo: margins.trailingAnchor,
            constant: 84
        ).isActive = true
        view.addSubview(_nameBox)
        
        _messageLabel = UILabel(frame: CGRect(x: 10, y: 289.5, width: 355, height: 21))
        _messageLabel.textAlignment = NSTextAlignment.center
        _messageLabel.text = "Hello, I am PureCode"
        view.addSubview(_messageLabel)
        
        let button = UIButton(frame: CGRect(x: 164.5, y: 356.6, width: 55, height: 30))
        button.setTitle("Button", for: UIControlState.normal)
        button.setTitleColor(UIColor.blue, for: UIControlState.normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(self.button_touchDown(_:)), for: UIControlEvents.touchDown)
    }
    
    @objc func button_touchDown(_ sender : UIButton) {
        _messageLabel.text = "Hello, I am " + _nameBox.text!
    }
}
