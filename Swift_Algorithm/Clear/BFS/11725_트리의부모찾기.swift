//
//  11725_트리의부모찾기.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/28.
//

//import Foundation
//
//
//let n: Int = Int(readLine()!)!
//var data: [[Int]] = Array(repeating: [], count: n + 1)
//
//for i in 0 ..< n - 1 {
//    let ab: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let a: Int = ab[0]
//    let b: Int = ab[1]
//    data[a].append(b)
//    data[b].append(a)
//}
//
//var visited: [Bool] = Array(repeating: false, count: n + 1)
//var parentNode: [Int] = Array(repeating: 0, count: n + 1)
//
//func bfs(start: Int){
//    visited[start] = true
//    var q: [Int] = [start]
//    var idx: Int = 0
//
//    while q.count > idx {
//        let now: Int = q[idx]
//        idx += 1
//        for i in data[now] {
//            if !visited[i] {
//                visited[i] = true
//                parentNode[i] = now
//                q.append(i)
//            }
//        }
//    }
//}
//
//bfs(start: 1)
//
//for i in parentNode[ 2...] {
//    print(i)
//}
