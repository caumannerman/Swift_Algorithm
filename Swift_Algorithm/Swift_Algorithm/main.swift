//
//  main.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/16.
//

import Foundation

let nm: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
let n: Int = nm[0]
let m: Int = nm[1]
var data: [[Int]] = Array(repeating: [], count: n + 1)

for _ in 0 ..< m {
    let ab: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
    let a: Int = ab[0]
    let b: Int = ab[1]
    data[a].append(b)
    data[b].append(a)
    
}
var visited: [Bool] = Array(repeating: false, count: n + 1)
var count: Int = 0

for i in 1 ..< n {
    if !visited[i]{
        dfs(v: i, count: &count)
        count += 1
    }
}

func dfs( v: Int, count: inout Int) {
    visited[v] = true
    if data[v].count == 0 {
        count -= 1
        return
    }
    
    for i in data[v] {
        if !visited[i] {
            dfs(v: i, count: &count)
        }
    }
}
print(count)
