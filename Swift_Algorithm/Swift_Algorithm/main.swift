//
//  main.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/16.
//

import Foundation

let k: Int = Int(readLine()!)!
var dp: [Int] = Array(repeating: 0, count: 12)

dp[1] = 1
dp[2] = 2
dp[3] = 4

for i in 4 ..< 12 {
    dp[i] = dp[i - 1] + dp[i - 2] + dp[i - 3]
    
}

for i in 0 ..< k {
    let n: Int = Int(readLine()!)!
    print(dp[n])
}

