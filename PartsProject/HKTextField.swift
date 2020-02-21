//
//  HKTextField.swift
//  PartsProject
//
//  Created by 近藤宏輝 on 2020/02/21.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

import UIKit

/*
 課題:ボタンA、Bを作成し、テキストフィールドを2つ置き、ラベルを置き、Aをタップするとテキストフィールドに入力されている値同士を足し算、Bをタップすると引き算ができるようにしてください。
 また、条件としては、計算自体はモデルクラスを作成し、
 ボタン、ラベルは独自クラスで作成してください。
 */


class HKTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    

    //GFTextFieldを作成するためのプロパティを定義
    private func configure() {
        translatesAutoresizingMaskIntoConstraints = false
        
        layer.cornerRadius        = 10
        layer.borderWidth         = 2
        layer.borderColor = UIColor.systemGray4.cgColor
        
        textColor                 = .label
        tintColor                 = .label
        textAlignment             = .center
        font = UIFont.preferredFont(forTextStyle: .title2)
        adjustsFontSizeToFitWidth = true
        minimumFontSize           = 12
        
        backgroundColor           = .tertiarySystemBackground
        autocorrectionType        = .no
        returnKeyType             = .go
        placeholder = "数字を入力してください"
    }
    
}
