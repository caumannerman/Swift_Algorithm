//
//  main.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/16.
//
import Foundation

let n: Int = Int(readLine()!)!
let data: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
let m: Int = Int(readLine()!)!
let numbers: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}

let data_sorted = data.sorted()

func bs(target: Int) -> Int{
    var start: Int = 0
    var end: Int = n - 1
    while start <= end {
        let mid: Int = (start + end ) / 2
        if data_sorted[mid] == target {
            return 1
        }
        else if data_sorted[mid] > target {
            end = mid - 1
        }
        else {
            start = mid + 1
        }
    }
    return 0
}



for i in numbers{
    print(bs(target: i))
}
