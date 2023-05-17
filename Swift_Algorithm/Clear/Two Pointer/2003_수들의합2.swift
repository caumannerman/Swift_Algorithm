//
//  2003_수들의합2.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/17.
//

//import Foundation
//
//let nm: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n: Int = nm[0]
//let m: Int = nm[1]
//let data: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//var end: Int = 0
//var summary: Int = 0
//var count: Int = 0
//
//for start in 0 ..< n {
//    while summary < m && end < n {
//        summary += data[end]
//        end += 1
//    }
//    if summary == m {
//        count += 1
//    }
//    summary -= data[start]
//}
//print(count)
