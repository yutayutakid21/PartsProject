//
//  CalcModel.swift
//  PartsProject
//
//  Created by 近藤宏輝 on 2020/02/21.
//  Copyright © 2020 Fujii Yuta. All rights reserved.
//

/*
課題:ボタンA、Bを作成し、テキストフィールドを2つ置き、ラベルを置き、Aをタップするとテキストフィールドに入力されている値同士を足し算、Bをタップすると引き算ができるようにしてください。
また、条件としては、計算自体はモデルクラスを作成し、
ボタン、ラベルは独自クラスで作成してください。
*/

import Foundation

class CalcModel{
    var number1 = Int()
    var number2 = Int()
    
    init(CalcA: Int,CalcB: Int) {
        number1 = CalcA
        number2 = CalcB
    }
    
    func plus() -> Int {
        return number1 + number2
    }
    
    func min() -> Int {
        return number1 - number2
    }
    
}
