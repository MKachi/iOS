//
//  TimeLineCard.swift
//  FaceBook
//
//  Created by 김동영 on 2018. 7. 1..
//  Copyright © 2018년 김동영. All rights reserved.
//

import UIKit
import SnapKit

extension UIButton {
    static func createImageButton(title: String, image: UIImage?) -> UIButton {
        let result = UIButton()
        
        result.setTitle(title, for: .normal)
        result.setTitleColor(UIColor.black, for: .normal)
        
        result.setImage(image, for: .normal)
        result.titleEdgeInsets = UIEdgeInsetsMake(0, 10, 0, 0)
        result.titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        return result
    }
}

class FeedCard: UICollectionViewCell {
    static let tag = "FeedCard"
    
    let profileImage: UIImageView = {
        let result = UIImageView()
        result.image = UIImage(named: "Sample")
        result.contentMode = .scaleAspectFill
        result.layer.cornerRadius = 45 / 2
        result.layer.masksToBounds = true
        return result
    }()
    
    let nameLabel: UILabel = {
        let result = UILabel()
        result.numberOfLines = 2
        return result
    }()
    
    let underLine: UIView = {
        let result = UIView()
        result.backgroundColor = UIColor(named: "BackgroundColor")
        return result
    }()
    
    let likeButton = UIButton.createImageButton(title: "좋아요", image: UIImage(named: "Like"))
    let commentButton = UIButton.createImageButton(title: "댓글 달기", image: UIImage(named: "Comment"))
    let sharedButton = UIButton.createImageButton(title: "공유하기", image: UIImage(named: "Shared"))
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initializeUI()
        initializeConstraints()
        
//        likeButton.addTarget(self, action: #selector(self.likeButton_touchUpInside(_:)), for: UIControlEvents.touchUpInside)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init has not been implemented!")
    }
    
    private func initializeUI() {
        backgroundColor = UIColor.white
    
        addSubview(profileImage)
        addSubview(nameLabel)
        addSubview(underLine)
        addSubview(sharedButton)
        addSubview(commentButton)
        addSubview(likeButton)
    }
    
    private func initializeConstraints() {
        profileImage.snp.makeConstraints { (make) in
            make.size.equalTo(CGSize(width: 45, height: 45))
            make.top.equalTo(snp.top).offset(10)
            make.leading.equalTo(snp.leading).offset(10)
        }
        
        nameLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(profileImage.snp.trailing).offset(13)
            make.centerY.equalTo(profileImage.snp.centerY)
        }
        
        underLine.snp.makeConstraints { (make) in
            make.size.height.equalTo(1)
            make.bottom.equalTo(snp.bottom).offset(-40)
            make.centerX.equalTo(snp.centerX)
            make.leading.equalTo(snp.leading).offset(13)
            make.trailing.equalTo(snp.trailing).offset(-13)
        }
        
        sharedButton.snp.makeConstraints { (make) in
            make.top.equalTo(underLine.snp.bottom).offset(4)
            make.bottom.equalTo(snp.bottom).offset(-4)
            make.trailing.equalTo(snp.trailing).offset(-25)
        }
        
        commentButton.snp.makeConstraints { (make) in
            make.top.equalTo(underLine.snp.bottom).offset(4)
            make.bottom.equalTo(snp.bottom).offset(-4)
            make.centerX.equalTo(snp.centerX)
        }
        
        likeButton.snp.makeConstraints { (make) in
            make.top.equalTo(underLine.snp.bottom).offset(4)
            make.bottom.equalTo(snp.bottom).offset(-4)
            make.leading.equalTo(snp.leading).offset(25)
        }
    }
    
    public func setData(name: String, profile: UIImage, date: String) {
        let attributedText = NSMutableAttributedString(string: name, attributes: [
            NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 14)
        ])
        
        // date
        attributedText.append(NSAttributedString(string: "\n수요일 오후 3:01  •  ", attributes: [
            NSAttributedStringKey.font: UIFont.systemFont(ofSize: 12),
            NSAttributedStringKey.foregroundColor: UIColor(red: 155 / 255, green: 161 / 255, blue: 161 / 255, alpha: 1)
        ]))
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 4
        
        attributedText.addAttribute(NSAttributedStringKey.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, attributedText.length))
        
        let attachment = NSTextAttachment()
        attachment.image = UIImage(named: "Global")
        attachment.bounds = CGRect(x: 0, y: -2, width: 12, height: 12)
        attributedText.append(NSAttributedString(attachment: attachment))
        
        nameLabel.attributedText = attributedText
        
        profileImage.image = profile
    }
    
//    @objc private func likeButton_touchUpInside(_ sender: UIButton) {
//        
//    }
}
