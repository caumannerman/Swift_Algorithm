//
//  15649_N과M(1).swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/29.
////
//
//import Foundation
//
//let nm: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n: Int = nm[0]
//let m: Int = nm[1]
//
//var result: [Int] = Array(repeating: 0, count: m)
//var visited: [Bool] = Array(repeating: false, count : n + 1)
//
//func dfs(_ level: Int) {
//    if level == m {
//        for i in result{
//            print(i, terminator: " ")
//        }
//        print()
//        return
//    }
//
//    for i in 1 ..< n + 1 {
//        if !visited[i]{
//            visited[i] = true
//            result[level] = i
//            dfs(level + 1)
//            visited[i] = false
//        }
//    }
//}
//dfs(0)
