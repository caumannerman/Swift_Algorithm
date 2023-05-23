//
//  main.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/16.
//
import Foundation

let n: Int = Int(readLine()!)!

var isPrime: [Bool] = Array(repeating: true, count : n + 1)
isPrime[0] = false; isPrime[1] = false;

for i in 2 ..< n + 1 {
    if !isPrime[i]{
        continue
    }
    var now: Int = i * 2
    while now <= n {
        if isPrime[now] {
            isPrime[now] = false
        }
        now += i
    }
}
var prime: [Int] = []

for i in 2 ..< n + 1 {
    if isPrime[i]{
        prime.append(i)
    }
}

var end: Int = 0
var summary: Int = 0
var count: Int = 0

for start in 0 ..< prime.count {
    while summary < n && end < prime.count {
        summary += prime[end]
        end += 1
    }
    if summary == n {
        count += 1
    }
    summary -= prime[start]
}

print(count)
