//
//  main.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/16.
//
import Foundation

let nk: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
let n: Int = nk[0]
var k: Int = nk[1]
var data: [Int] = []

for _ in 0 ..< n {
    data.append(Int(readLine()!)!)
}
var count: Int = 0

for i in stride(from: n - 1, through: 0, by: -1) {
    if k < data[i] {
        continue
    }
    count += k / data[i]
    k %= data[i]
}

print(count)
