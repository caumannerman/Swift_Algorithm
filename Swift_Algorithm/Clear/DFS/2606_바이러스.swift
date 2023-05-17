//
//  2606_바이러스.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/17.
//

//import Foundation
//
//let n: Int = Int(readLine()!)!
//let m: Int = Int(readLine()!)!
//var arr: [[Int]] = Array(repeating: [], count: n + 1)
//var visited: [Bool] = Array(repeating: false, count: n + 1)
//
//for _ in 0 ..< m {
//    let ab: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let a: Int = ab[0]
//    let b: Int = ab[1]
//    arr[a].append(b)
//    arr[b].append(a)
//}
//var count: Int = 0
//
//func dfs(_ v: Int){
//    visited[v] = true
//    count += 1
//    for i in arr[v]{
//        if !visited[i]{
//            dfs(i)
//        }
//    }
//}
//
//dfs(1)
//print(count - 1)
