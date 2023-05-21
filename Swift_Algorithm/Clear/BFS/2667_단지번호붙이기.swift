//
//  2667_단지번호붙이기.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/20.
//
//import Foundation
//typealias Point = (Int, Int)
//let n: Int = Int(readLine()!)!
//var arr: Array<Array<Int>> = []
//for _ in 0 ..< n {
//    arr.append(readLine()!.map{Int(String($0))!})
//}
//
//let dx: [Int] = [-1, 0, 1, 0]
//let dy: [Int] = [0, 1, 0, -1]
//
//func bfs(x: Int ,y: Int) -> Int{
//    var q: Array<Point> = [(x, y)]
//    arr[x][y] = 0
//    var idx: Int = 0
//
//    while q.count > idx {
//        let (now_x, now_y) = q[idx]
//        idx += 1
//        for i in 0 ..< 4 {
//            let nx = now_x + dx[i]
//            let ny = now_y + dy[i]
//            if nx < 0 || ny < 0 || nx >= n || ny >= n {
//                continue
//            }
//            if arr[nx][ny] == 1 {
//                arr[nx][ny] = 0
//                q.append((nx, ny))
//            }
//        }
//    }
//
//    return idx
//}
//var danji: [Int] = []
//
//for i in 0 ..< n {
//    for j in 0 ..< n {
//        if arr[i][j] == 1 {
//            danji.append(bfs(x: i, y: j))
//        }
//    }
//}
//danji.sort()
//print(danji.count)
//for i in danji{
//    print(i)
//}
