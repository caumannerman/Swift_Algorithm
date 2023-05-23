//
//  4963_섬의개수.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/23.
//

//
//import Foundation
//
//let dx: [Int] = [-1, 0, 1, 0, 1, 1, -1, -1]
//let dy: [Int] = [0, 1, 0, -1, 1, -1, 1, -1]
//
//func dfs(x: Int ,y: Int, arr: inout [[Int]]) {
//
//    arr[x][y] = 0
//    for i in 0 ..< 8 {
//        let nx: Int = x + dx[i]
//        let ny: Int = y + dy[i]
//        if nx < 0 || ny < 0 || nx >= arr.count || ny >= arr[0].count {
//            continue
//        }
//        if arr[nx][ny] == 1 {
//            dfs(x: nx, y: ny, arr: &arr)
//        }
//    }
//}
//
//while true {
//    let mn: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
//    let m: Int = mn[0]
//    let n: Int = mn[1]
//    if n == 0 && m == 0 {
//        break
//    }
//
//    var arr: [[Int]] = []
//    var count: Int = 0
//    for _ in 0 ..< n {
//        arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
//    }
//
//    for i in 0 ..< n {
//        for j in 0 ..< m {
//            if arr[i][j] == 1 {
//                dfs(x: i, y: j, arr: &arr)
//                count += 1
//            }
//        }
//    }
//    print(count)
//
//
//}
//
