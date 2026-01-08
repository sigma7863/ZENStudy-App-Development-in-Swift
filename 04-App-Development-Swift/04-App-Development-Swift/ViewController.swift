//
//  ViewController.swift
//  04-App-Development-Swift
//
//  Created by Sigma7863 on 2026/01/06.
//

import UIKit

class ViewController: UIViewController {
    
    // アウトレットの型は ImplicitlyUnwrappedOptional 型
    // nil かどうかをチェックしないため、参照された時に nil だとアプリはクラッシュする
    // アウトレットが接続されていない場合はプロパティが nil のままになってしまう
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        label.text = "Outlet 接続" // textプロパティに表示させたい文字列を代入
        label.textAlignment = .center //  NSTextAlignment.center を代入してテキストプロパティを中央寄せにする
    }

    @IBAction func switchChanged(_ toggleSwitch: UISwitch) {
        // スイッチの切り替えに応じてラベルのテキストを変更する
        if toggleSwitch.isOn {
            label.text = "スイッチ ON"
            toggleSwitch.onTintColor = .black // .onTintColorでオンの場合の色を変えれる
            toggleSwitch.thumbTintColor = .white // thumbTintColorでつまみの部分の色を変えれる
            // Tint: 色合い, thumb: 親指
        } else {
            label.text = "スイッチ OFF"
            toggleSwitch.thumbTintColor = .black
        }
    } // senderでは分かりにくいので、toggleSwitchに変更
    
}

