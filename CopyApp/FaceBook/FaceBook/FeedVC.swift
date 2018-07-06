//
//  MainVC.swift
//  FaceBook
//
//  Created by 김동영 on 2018. 6. 28..
//  Copyright © 2018년 김동영. All rights reserved.
//

import UIKit
import SnapKit

class FeedVC: UICollectionViewController, UICollectionViewDelegateFlowLayout {

    let searchBar: UISearchBar = {
        let result = UISearchBar()
        return result
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView?.backgroundColor = UIColor(named: "BackgroundColor")
        collectionView?.register(FeedCard.self, forCellWithReuseIdentifier: FeedCard.tag)
        navigationItem.title = "FaceBook"
        
        if case let controller = navigationController, controller != nil {
            controller!.view.addSubview(searchBar)
            searchBar.snp.makeConstraints { (make) in
                make.centerX.equalTo(controller!.view.snp.centerX)
                make.centerY.equalTo(controller!.view.snp.centerY)
            }
        }
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let result = collectionView.dequeueReusableCell(withReuseIdentifier: FeedCard.tag, for: indexPath)
        return result
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: 300.0)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
