//
//  10816_.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/24.
//
//
//import Foundation
//
//
//let n: Int = Int(readLine()!)!
//let arr: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//let m: Int = Int(readLine()!)!
//let data: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//
//let arr_sorted = arr.sorted()
//
//func bs_left(target: Int) -> Int {
//    var last: Int = -1
//    var start: Int = 0
//    var end: Int = n - 1
//    while start <= end {
//        let mid = (start + end) / 2
//        if arr_sorted[mid] < target {
//            start = mid + 1
//        }else if arr_sorted[mid] > target{
//            end = mid - 1
//        }else {
//            last = mid
//            end = mid - 1
//        }
//    }
//    return last
//}
//func bs_right(target: Int) -> Int {
//    var last: Int = -1
//    var start: Int = 0
//    var end: Int = n - 1
//    while start <= end {
//        let mid = (start + end) / 2
//        if arr_sorted[mid] > target {
//            end = mid - 1
//        }else if arr_sorted[mid] < target{
//            start = mid + 1
//        }else {
//            last = mid
//            start = mid + 1
//        }
//    }
//    return last
//}
//var result: String = ""
//
//for i in 0 ..< m {
//    let s_idx: Int = bs_left(target: data[i])
//    let e_idx: Int = bs_right(target: data[i])
//    if s_idx == -1 {
//        result += "0 "
//        continue
//    }
//    result += String(e_idx - s_idx + 1) + " "
//}
//print(result)
