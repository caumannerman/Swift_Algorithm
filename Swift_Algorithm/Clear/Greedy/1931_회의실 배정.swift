//
//  1931_회의실 배정.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/25.
//

//import Foundation
//
//let n: Int = Int(readLine()!)!
//var data: [(Int, Int)] = []
//for _ in 0 ..< n {
//    let ab: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//    data.append((ab[0], ab[1]))
//}
//
//let data_sorted: [(Int , Int)] = data.sorted{ a, b -> Bool in
//    if a.1 == b.1 {
//        return a.0 < b.0
//    }
//    return a.1 < b.1
//}
//print(data_sorted)
//var now_end: Int = 0
//var count: Int = 0
//
//for (start, end) in data_sorted{
//    if start < now_end {
//        continue
//    }
//    count += 1
//    now_end = end
//}
//
//print(count)
//
