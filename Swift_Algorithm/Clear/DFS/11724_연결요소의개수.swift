//
//  11724_연결요소의개수.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/20.
//

//import Foundation
//
//let nm: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//let n: Int = nm[0]
//let m: Int = nm[1]
//var data: [[Int]] = Array(repeating: [], count: n + 1)
//
//for _ in 0 ..< m {
//    let ab: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let a: Int = ab[0]
//    let b: Int = ab[1]
//    data[a].append(b)
//    data[b].append(a)
//
//}
//var visited: [Bool] = Array(repeating: false, count: n + 1)
//var count: Int = 0
//
//for i in 1 ... n {
//    if !visited[i]{
//        dfs(i)
//        count += 1
//    }
//}
//
//func dfs(_ v: Int) {
//    visited[v] = true
//    for i in data[v] {
//        if !visited[i] {
//            dfs(i)
//        }
//    }
//}
//print(count)
