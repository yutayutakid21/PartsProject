//
//  ViewController.swift
//  PartsProject
//
//  Created by Fujii Yuta on 2020/02/20.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    /*
     課題:ボタンA、Bを作成し、テキストフィールドを2つ置き、ラベルを置き、Aをタップするとテキストフィールドに入力されている値同士を足し算、Bをタップすると引き算ができるようにしてください。
     また、条件としては、計算自体はモデルクラスを作成し、
     ボタン、ラベルは独自クラスで作成してください。
     */
    
    //入力するテキストフィールド
    let textField1 = HKTextField()
    let textField2 = HKTextField()
    
    //足し算の結果
    var result1 = UILabel()
    //引き算の結果
    var result2 = UILabel()
    //割り算の結果
    var result3 = UILabel()
    //掛け算の結果
    var result4 = UILabel()
    
    
    //計算結果を出すボタン
    var actionButton = HKButton()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBlue
        configureTextField()
        configureLabel()
        configureButton()
    }
    
    
    func configureTextField() {
        view.addSubview(textField1)
        textField1.translatesAutoresizingMaskIntoConstraints = false
        textField1.backgroundColor = .systemGray
        textField1.placeholder = "何か数字を書いてください"
        
        view.addSubview(textField2)
        textField2.translatesAutoresizingMaskIntoConstraints = false
        textField2.backgroundColor = .systemGray
        textField2.placeholder = "何か数字を書いてください"
        
        NSLayoutConstraint.activate([
            textField1.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            textField1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            textField1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            textField1.heightAnchor.constraint(equalToConstant: 50),
            
            textField2.topAnchor.constraint(equalTo: textField1.topAnchor, constant: 100),
            textField2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            textField2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            textField2.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    func configureLabel() {
        view.addSubview(result1)
        result1.translatesAutoresizingMaskIntoConstraints = false
        result1.textColor = .systemOrange
        result1.text = "足し算の結果が出ます"
        
        view.addSubview(result2)
        result2.translatesAutoresizingMaskIntoConstraints = false
        result2.textColor = .systemOrange
        result2.text = "引き算の結果が出ます"
        
        
        NSLayoutConstraint.activate([
            result1.topAnchor.constraint(equalTo: textField2.topAnchor, constant: 150),
            result1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            result1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            result1.heightAnchor.constraint(equalToConstant: 50),
            
            result2.topAnchor.constraint(equalTo: result1.topAnchor, constant: 80),
            result2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            result2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            result2.heightAnchor.constraint(equalToConstant: 50),
            
            result3.topAnchor.constraint(equalTo: result2.topAnchor, constant: 80),
            result3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            result3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            result3.heightAnchor.constraint(equalToConstant: 50),
            
            result4.topAnchor.constraint(equalTo: result3.topAnchor, constant: 80),
            result4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            result4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            result4.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    func configureButton() {
        view.addSubview(actionButton)
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        actionButton.backgroundColor = .systemRed
        actionButton.setTitle("計算結果", for: .normal)
        actionButton.addTarget(self, action: #selector(calc), for: .touchUpInside)
        
        
        NSLayoutConstraint.activate([
            actionButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -80),
            actionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            actionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            actionButton.heightAnchor.constraint(equalToConstant: 50),
        ])
    }
    
    
    @objc func calc() {
        //計算クラスのインスタンス化
        let calcModel = CalcModel(CalcA: Int(textField1.text!)!, CalcB: Int(textField2.text!)!)
        
        let num1 = calcModel.plus()
        let num2 = calcModel.min()
        
        result1.text = String(num1)
        result2.text = String(num2)
        
    }
}
