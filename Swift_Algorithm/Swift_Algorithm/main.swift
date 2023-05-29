//
//  main.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/16.
//

import Foundation

let n: Int = Int(readLine()!)!
let m: Int = Int(readLine()!)!
let INF: Int = Int(1e9)

var data: [[Int]] = Array(repeating: Array(repeating: INF, count: n + 1), count: n + 1)
for i in 1 ..< n + 1 {
    data[i][i] = 0
}

for i in 0 ..< m {
    let abc: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
    let a = abc[0]
    let b = abc[1]
    let c = abc[2]
    
    data[a][b] = min(data[a][b], c)
}

for k in 1 ..< n + 1 {
    for i in 1 ..< n + 1 {
        if i == k {
            continue
        }
        for j in 1 ..< n + 1 {
            if j == i || j == k {
                continue
            }
            
            data[i][j] = min(data[i][j], data[i][k] + data[k][j])
            
        }
    }
}

for i in 1 ..< n + 1 {
    for j in 1 ..< n + 1 {
        if data[i][j] == INF {
            print(0, terminator: " ")
        }else {
            print(data[i][j], terminator: " ")
        }
    }
    print()
}
