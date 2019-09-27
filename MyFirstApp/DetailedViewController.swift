//
//  DetailedViewController.swift
//  MyFirstApp
//
//  Created by Kota Ninomiya on 2019/09/10.
//  Copyright © 2019 Kota Ninomiya. All rights reserved.
//

import UIKit

class DetailedViewController: UIViewController {

    @IBOutlet weak var detailImageView: UIImageView!
    var imageName:String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let myImageName = imageName else
        {
            return
        }

        detailImageView.image = UIImage(named:myImageName)
//
//        detailImageView.image = UIImage(named:"image1")
    }
}
