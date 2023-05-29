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

var result: [Int] = Array(repeating: 0, count: m)
var visited: [Bool] = Array(repeating: false, count: n + 1)


func johap(_ level: Int, _ next: Int) {
    if level == m {
        for i in result{
            print(i, terminator: " ")
        }
        print()
        return
    }
    
    for i in next ..< n + 1 {
        if !visited[i] {
            result[level] = i
            visited[i] = true
            johap(level + 1, i + 1)
            visited[i] = false
        }
    }
}
johap(0, 1)
