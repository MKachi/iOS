//
//  MainVC.swift
//  FaceBook
//
//  Created by 김동영 on 2018. 6. 28..
//  Copyright © 2018년 김동영. All rights reserved.
//

import UIKit
import SnapKit

let cellTag = "cellID"

class TimeLineVC: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = UIColor(named: "BackgroundColor")
        collectionView?.register(FeedCell.self, forCellWithReuseIdentifier: cellTag)
        navigationItem.title = "FaceBook"
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let result = collectionView.dequeueReusableCell(withReuseIdentifier: cellTag, for: indexPath)
        return result
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 300.0)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
