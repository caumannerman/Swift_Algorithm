//
//  1806_부분합.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/19.
//
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
//var count: Int = Int(1e9)
//
//for start in 0 ..< n {
//    while summary < m && end < n {
//        summary += data[end]
//        end += 1
//    }
//    if summary >= m {
//        count = min(count, end - start)
//        summary -= data[start]
//    }
//}
//
//if count == Int(1e9){
//    print(0)
//}else {
//    print(count)
//}
//
