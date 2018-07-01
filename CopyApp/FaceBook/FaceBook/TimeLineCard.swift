//
//  TimeLineCard.swift
//  FaceBook
//
//  Created by 김동영 on 2018. 7. 1..
//  Copyright © 2018년 김동영. All rights reserved.
//

import UIKit
import SnapKit

class FeedCell: UICollectionViewCell {
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
        result.textAlignment = .left
        result.font = UIFont.boldSystemFont(ofSize: 17)
        result.text = "name"
        return result
    }()
    
    let dateLabel: UILabel = {
        let result = UILabel()
        result.textAlignment = .left
        result.font = UIFont.systemFont(ofSize: 13)
        result.text = "목요일 오후 11:04"
        return result
    }()
    
    let underLine: UIView = {
        let result = UIView()
        result.backgroundColor = UIColor(named: "BackgroundColor")
        return result
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initializeUI()
        initializeConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init has not been implemented!")
    }
    
    private func initializeUI() {
        backgroundColor = UIColor.white
        addSubview(profileImage)
        addSubview(nameLabel)
        addSubview(dateLabel)
        addSubview(underLine)
    }
    
    private func initializeConstraints() {
        profileImage.snp.makeConstraints { (make) in
            make.size.equalTo(CGSize(width: 45, height: 45))
            make.top.equalTo(snp.top).offset(10)
            make.leading.equalTo(snp.leading).offset(10)
        }
        
        nameLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(profileImage.snp.trailing).offset(13)
            make.centerY.equalTo(profileImage.snp.centerY).offset(-10)
        }
        
        dateLabel.snp.makeConstraints { (make) in
            make.leading.equalTo(profileImage.snp.trailing).offset(13)
            make.centerY.equalTo(profileImage.snp.centerY).offset(10)
        }
        
        underLine.snp.makeConstraints { (make) in
            make.size.height.equalTo(0.5)
            make.bottom.equalTo(snp.bottom).offset(-40)
            make.centerX.equalTo(snp.centerX)
            make.leading.equalTo(snp.leading).offset(13)
            make.trailing.equalTo(snp.trailing).offset(-13)
        }
    }
    
    public func setData(name: String, profile: UIImage, date: String) {
        nameLabel.text = name
        profileImage.image = profile
        dateLabel.text = date
    }
}
