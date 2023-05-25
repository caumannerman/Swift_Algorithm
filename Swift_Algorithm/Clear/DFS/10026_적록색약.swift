//
//  10026_적록색약.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/25.
//
//
//import Foundation
//
//let n: Int = Int(readLine()!)!
//let dict: Dictionary<String, Int> = ["R": 0, "G": 0, "B": 1]
//var arr: [[String]] = []
//
//for _ in 0 ..< n {
//    arr.append(readLine()!.map{String($0)})
//}
//var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: n), count: n)
//let dx: [Int] = [-1, 0, 1, 0]
//let dy: [Int] = [0, 1, 0, -1]
//
//func dfs(x: Int, y: Int, jrsm: Bool) {
//    visited[x][y] = true
//    for i in 0 ..< 4 {
//        let nx: Int = x + dx[i]
//        let ny: Int = y + dy[i]
//        if nx < 0 || ny < 0 || nx >= n || ny >= n {
//            continue
//        }
//        if jrsm{
//            if !visited[nx][ny] && dict[arr[nx][ny]]! == dict[arr[x][y]]!{
//                dfs(x: nx, y: ny, jrsm: true)
//            }
//        }else {
//            if !visited[nx][ny] && arr[nx][ny] == arr[x][y]{
//                dfs(x: nx, y: ny, jrsm: false)
//            }
//        }
//        
//    }
//}
//var normal_count: Int = 0
//var jrsm_count: Int = 0
//
//for i in 0 ..< n {
//    for j in 0 ..< n {
//        if !visited[i][j] {
//            dfs(x: i, y: j, jrsm: false)
//            normal_count += 1
//        }
//    }
//}
//visited = Array(repeating: Array(repeating: false, count: n), count: n)
//for i in 0 ..< n {
//    for j in 0 ..< n {
//        if !visited[i][j] {
//            dfs(x: i, y: j, jrsm: true)
//            jrsm_count += 1
//        }
//    }
//}
//print(normal_count, jrsm_count)
