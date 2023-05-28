//
//  11403_경로찾기.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/28.
//

//import Foundation
//
//let n: Int = Int(readLine()!)!
//var data: [[Int]] = []
//
//for _ in 0 ..< n {
//    data.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//}
//
//
//for k in 0 ..< n {
//    for i in  0 ..< n {
//        if i == k {
//            continue
//        }
//        for j in 0 ..< n {
//            if  j == k {
//                continue
//            }
//            if data[i][j] == 1 {
//                continue
//            }
//            else {
//                if data[i][k] == 1 && data[k][j] == 1 {
//                    data[i][j] = 1
//                }
//            }
//        }
//    }
//}
//print(data)
