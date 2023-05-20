//
//  2559_수열.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/20.
//
//
//import Foundation
//
//let nk: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n: Int = nk[0]
//let k: Int = nk[1]
//let data: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//var sum: Int = 0
//
//
//for i in 0 ..< k {
//    sum += data[i]
//}
//var maxi: Int = sum
//
//for i in k ..< n {
//    sum += data[i] - data[i - k]
//    maxi = max(maxi, sum)
//}
//print(maxi)
//
