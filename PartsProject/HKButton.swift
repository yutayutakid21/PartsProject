//
//  HKButton.swift
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

class HKButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    init(backgroundColor: UIColor, title: String){
        super.init(frame: .zero)
        self.backgroundColor = backgroundColor
        self.setTitle(title, for: .normal)
        configure()
    }
    
     //HKButtonを作成するためのプロパティを定義
    private func configure(){
        layer.cornerRadius      = 10
        setTitleColor(.white, for: .normal)
        titleLabel?.font        = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    
    func set(backgroundColor: UIColor, title: String) {
        self.backgroundColor = backgroundColor
        setTitle(title, for: .normal)
    }
}
