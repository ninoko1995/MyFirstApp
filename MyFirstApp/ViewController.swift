//
//  ViewController.swift
//  MyFirstApp
//
//  Created by Kota Ninomiya on 2019/09/10.
//  Copyright © 2019 Kota Ninomiya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myImageView.image = UIImage(named:"image1")
    }
    
    @IBAction func returnToMain(segue:UIStoryboardSegue) {
    }

    @IBAction func onTapButton1(_ sender: Any) {
        myImageView.image = UIImage(named:"image1")
    }
    @IBAction func onTapButton2(_ sender: Any) {
        myImageView.image = UIImage(named:"image2")
    }
    @IBAction func onTapButton3(_ sender: Any) {
        myImageView.image = UIImage(named:"image3")
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is DetailedViewController {
            // 遷移先のDetailViewControllerを取得
            let detailViewController = segue.destination as! DetailedViewController
            // タップされたボタン要素を取得
            let tappedButton = sender as! UIButton;
            // ボタンのタグを取得
            let buttonTag = tappedButton.tag
            // 詳細画面に表示する画像名を生成
            let detailImageName = "image" + String(buttonTag)
            // 詳細画面に画像名を渡す
            detailViewController.imageName = detailImageName
        }
        if segue.destination is IndexViewController {
        }
    }
}

