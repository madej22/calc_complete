//
//  File.swift
//  Calculator
//
//  Created by student on 10/10/2023.
//

import Foundation

struct Operations {
    func operation1(of firstValue: Int, with secondValue: Int) -> Int? {
        if(firstValue < 0) {
            return nil
        }
        if (firstValue + secondValue > 10) {
            return 1
        } else {
            return 0
        }
    }
}
