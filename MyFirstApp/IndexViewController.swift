//
//  IndexViewController.swift
//  MyFirstApp
//
//  Created by Kota Ninomiya on 2019/09/11.
//  Copyright © 2019 Kota Ninomiya. All rights reserved.
//

import UIKit

class IndexViewController: UIViewController, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 15;
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // セルの取得
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "myCell", for: indexPath)        
        // セルの背景色を赤色に変更
        cell.backgroundColor = UIColor.red
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
