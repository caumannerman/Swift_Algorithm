//
//  1149_RGB거리.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/24.
//
//
//import Foundation
//
//let n: Int = Int(readLine()!)!
//var data: [[Int]] = []
//for _ in 0 ..< n {
//    data.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//for i in 1 ..< n {
//    for j in 0 ..< 3 {
//        switch j{
//        case 0:
//            data[i][j] = data[i][j] + min(data[i - 1][1], data[i - 1][2])
//        case 1:
//            data[i][j] = data[i][j] + min(data[i - 1][0], data[i - 1][2])
//        default:
//            data[i][j] = data[i][j] + min(data[i - 1][0], data[i - 1][1])
//        }
//    }
//}
//print(data[n - 1].min()!)
