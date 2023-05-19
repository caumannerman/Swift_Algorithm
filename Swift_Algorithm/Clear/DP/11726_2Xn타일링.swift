//
//  11726_2Xn타일링.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/19.
//

//import Foundation
//
//let n: Int = Int(readLine()!)!
//var dp: [Int] = Array(repeating: 0, count: n + 1)
//
//if n < 3 {
//    print(n)
//    exit(0)
//}
//dp[1] = 1
//dp[2] = 2
//
//for i in 3 ... n {
//    dp[i] = dp[i - 1] + dp[i - 2]
//    if dp[i] >= 10007 {
//        dp[i] %= 10007
//    }
//}
//
//print(dp[n])
