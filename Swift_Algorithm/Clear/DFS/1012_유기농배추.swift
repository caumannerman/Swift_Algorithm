//
//  1012_유기농배추.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/19.
//
//
//import Foundation
//let t: Int = Int(readLine()!)!
//let dx: [Int] = [-1, 0, 1, 0]
//let dy: [Int] = [0, 1, 0, -1]
//
//for _ in 0 ..< t {
//    let mnk: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let m: Int = mnk[0]
//    let n: Int = mnk[1]
//    let k: Int = mnk[2]
//    var arr: [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)
//    for _ in 0 ..< k {
//        let ab: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//        let a: Int = ab[1]
//        let b: Int = ab[0]
//        arr[a][b] = 1
//    }
//    var count: Int = 0
//    for i in 0 ..< n {
//        for j in 0 ..< m {
//            if arr[i][j] == 1 {
//                dfs(i, j, &arr)
//                count += 1
//            }
//        }
//    }
//    print(count)
//}
//
//func dfs(_ x: Int, _ y: Int, _ arr: inout [[Int]]){
//    arr[x][y] = 0
//    for i in 0 ..< 4 {
//        let nx: Int = x + dx[i]
//        let ny: Int = y + dy[i]
//        if nx < 0 || ny < 0 || nx >= arr.count || ny >= arr[0].count {
//            continue
//        }
//        if arr[nx][ny] == 1 {
//            dfs(nx, ny, &arr)
//        }
//    }
//}
