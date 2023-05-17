//
//  1463_1로만들기.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/17.
//

//import Foundation
//let n: Int = Int(readLine()!)!
//var dp: [Int] = Array(repeating: 0, count: n + 1)
//
//if n < 4 {
//    switch n{
//    case 1:
//        print(0)
//    case 2:
//        print(1)
//    default:
//        print(1)
//    }
//    exit(0)
//}
//dp[2] = 1; dp[3] = 1;
//
//for i in 4 ... n {
//    let first = i % 3 == 0 ? dp[i / 3] + 1 : Int(1e9)
//    let second = i % 2 == 0 ? dp[i / 2] + 1 : Int(1e9)
//    let third = dp[i - 1] + 1
//    dp[i] = min(first, second, third)
//}
//print(dp[n])
