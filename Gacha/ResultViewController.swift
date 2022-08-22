//
//  ResultViewController.swift
//  Gacha
//
//  Created by 藤井玖光 on 2022/08/22.
//

import UIKit

class ResultViewController: UIViewController {
    //乱数を入れるためのInt型の変数を用意
    var number: Int!
    
    //背景画像とモンスターの画像を表示するためのImageViewを用意
    @IBOutlet var backgroundImageView: UIImageView!
    @IBOutlet var monsterImageView: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //0~9までのランダムな数（乱数）を発生させる
        number = Int.random(in: 0...9)
        if number == 9{
            monsterImageView.image = UIImage(named: "result01")
            backgroundImageView.image = UIImage(named: "bg_gold")
        }else if number == 8{
            monsterImageView.image = UIImage(named:"result02")
            backgroundImageView.image = UIImage(named:"bg_red")
        }else if number == 7{
            monsterImageView.image = UIImage(named:"result03")
            backgroundImageView.image = UIImage(named:"bg_red")
        }else {
            //ノーマルモンスター
            monsterImageView.image = UIImage(named:"result04")
            backgroundImageView.image = UIImage(named:"bg_blue")
        }
    }
    
    @IBAction func back(){
        self.dismiss(animated: true, completion: nil)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
