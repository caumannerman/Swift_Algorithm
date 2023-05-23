//
//  2468_안전영역.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/23.
//
//
//
//import Foundation
//typealias Point = (Int, Int)
//
//let n: Int = Int(readLine()!)!
//var arr: [[Int]] = []
//var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: n)
//var maximum_height: Int = 0
//var now_count: Int = 0
//let dx: [Int] = [-1, 0, 1, 0]
//let dy: [Int] = [0, 1, 0, -1]
//
//
//for i in 0 ..< n {
//    let now = readLine()!.split(separator: " ").map{Int(String($0))!}
//    arr.append(now)
//    maximum_height = max(maximum_height, now.max()!)
//}
//
//func bfs(h: Int, x: Int, y: Int) {
//    var q: [Point] = [(x, y)]
//    visited[x][y] = true
//    var idx: Int = 0
//    while q.count > idx {
//        let (now_x, now_y) = q[idx]
//        idx += 1
//        for i in 0 ..< 4 {
//            let nx: Int = now_x + dx[i]
//            let ny: Int = now_y + dy[i]
//            if nx < 0 || ny < 0 || nx >= n || ny >= n {
//                continue
//            }
//            if !visited[nx][ny] && arr[nx][ny] > h {
//                visited[nx][ny] = true
//                q.append((nx, ny))
//            }
//        }
//    }
//}
//
//
//
//var maxi: Int = 1
//
//for i in 1 ..< maximum_height {
//    visited = Array(repeating: Array(repeating: false, count: n), count: n)
//    now_count = 0
//    for j in 0 ..< n {
//        for k in 0 ..< n {
//            if arr[j][k] > i && !visited[j][k] {
//                bfs(h: i, x: j, y: k)
//                now_count += 1
//            }
//        }
//    }
//    maxi = max(maxi, now_count)
//}
//
//print(maxi)
