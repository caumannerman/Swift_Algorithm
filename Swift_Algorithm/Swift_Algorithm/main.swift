//
//  main.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/16.
//

import Foundation

let n: Int = Int(readLine()!)!
var now_five: Int = n / 5
var rest: Int = n - now_five * 5

while now_five >= 0 {
    if rest % 3 == 0 {
        print(now_five + rest / 3)
        exit(0)
    }
    now_five -= 1
    rest += 5
}
print(-1)
