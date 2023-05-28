//
//  11728_배열합치기.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/28.
//

//import Foundation
//
//let nm: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n: Int = nm[0]
//let m: Int = nm[1]
//
//let arr1: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//let arr2: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//var idx1: Int = 0
//var idx2: Int = 0
//var result: [Int] = []
//
//while idx1 < n && idx2 < m {
//    if arr1[idx1] < arr2[idx2] {
//        result.append(arr1[idx1])
//        idx1 += 1
//    }
//    else {
//        result.append(arr2[idx2])
//        idx2 += 1
//    }
//}
//if idx1 < n {
//    result += arr1[idx1 ..< n]
//}
//else{
//    result += arr2[idx2 ..< m]
//}
//print(result)
