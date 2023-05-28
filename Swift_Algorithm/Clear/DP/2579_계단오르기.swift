//
//  2579_계단오르기.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/28.
//
//import Foundation
//
//
//let n: Int = Int(readLine()!)!
//var data: [Int] = Array(repeating: 0, count: n)
//
//for i in 0 ..< n {
//    data[i] = Int(readLine()!)!
//}
//
//if n == 1  {
//    print(data[0])
//    exit(0)
//}
//if n == 2 {
//    print(data[0] + data[1])
//    exit(0)
//}
//
//
//var result: [(Int, Int)] = Array(repeating: (0, 0), count: n)
//result[0] = ( data[0], data[0])
//result[1] = ( data[0] + data[1], data[1])
//
//
//for i in 2 ..< data.count {
//    result[i] = (data[i] + result[i - 1].1, data[i] + max(result[i - 2].0, result[i - 2].1))
//
//}
//
//print(max(result[n - 1].0, result[n - 1].1))
//
//
