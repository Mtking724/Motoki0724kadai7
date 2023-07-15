//
//  secondViewController.swift
//  Motoki0724kadai7
//
//  Created by Motoki Okayasu on 2023/07/10.
//

import UIKit

class secondViewController: UIViewController {
    
    //textField,labelをoutlet接続
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var resultLabel: UILabel!
    
    //キーボードのタイプを変換
    override func viewDidLoad() {
        super.viewDidLoad()
        textField1.keyboardType = .asciiCapableNumberPad
        textField2.keyboardType = .asciiCapableNumberPad
        // Do any additional setup after loading the view.
    }
    
    //メソッドで引き算の仕様を定義する
    private func subtraction() {
        let value1 = Int(textField1.text ?? "") ?? 0
        let value2 = Int(textField2.text ?? "") ?? 0
        
        resultLabel.text = String(value1 - value2)
    }
    
    //ButtonをAction接続する
    @IBAction private func tapButton(_ sender: Any) {
        //resignFirstResponderメソッドでボタンを押すたびにキーボードを隠す
        self.textField1.resignFirstResponder()
        self.textField2.resignFirstResponder()
        subtraction()
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
