//
//  main.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/16.
//
import Foundation
typealias Point = (Int, Int)

let mn: [Int ] = readLine()!.split(separator: " ").map{Int(String($0))!}
let m: Int = mn[0]
let n: Int = mn[1]
var arr: [[Int]] = []

for _ in 0 ..< n {
    arr.append(readLine()!.split(separator: " ").map{Int(String($0))!})
}

var zero: Int = 0
var tomato: [Point] = []

for i in 0 ..< n {
    for j in 0 ..< m {
        switch arr[i][j]{
        case 0:
            zero += 1
        case 1:
            tomato.append((i, j))
        default:
            continue
        }
    }
}
if tomato.count == 0 {
    print(-1)
    exit(0)
}
else if zero == 0 {
    print(0)
    exit(0)
}

let dx = [-1, 0, 1, 0]
let dy = [0, 1, 0, -1]

func bfs(_ zero: inout Int) -> Int {
    
    var idx: Int = 0
    var maxi: Int = 0
    while tomato.count > idx {
        let (now_x, now_y) = tomato[idx]
        idx += 1
        for i in 0 ..< 4 {
            let nx: Int = now_x + dx[i]
            let ny: Int = now_y + dy[i]
            if nx < 0 || ny < 0 || nx >= n || ny >= m {
                continue
            }
            if arr[nx][ny] == 0 {
                arr[nx][ny] = arr[now_x][now_y] + 1
                maxi = max(maxi, arr[nx][ny])
                tomato.append((nx, ny))
                zero -= 1
            }
        }
    }
    
    return maxi - 1
}

let result: Int = bfs(&zero)
if zero != 0 {
    print(-1)
}else {
    print(result)
}

