//
//  main.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/16.
//

import Foundation

let nm: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
let n: Int = nm[0]
let m: Int = nm[1]

let data: [Int] = readLine()!.split(separator: " ").map{Int(String($0))!}
let maxi: Int = data.max()!

func bs(_ target: Int) -> Int{
    var start: Int = 0
    var end: Int = maxi
    var last: Int = -1
    
    while start <= end {
        let mid: Int = (start + end ) / 2
        let now_get: Int = getTree(mid)
        
        if now_get < target {
            end = mid - 1
        }
        else if now_get > target {
            last = mid
            start = mid + 1
        }
        else {
            return mid
        }
    }
    return last
}

func getTree(_ height: Int) -> Int {
   return data.map{
        return $0 - height > 0 ? $0 - height : 0
   }.reduce(0, +)
}

print(bs(m))

//let str: [Character] = readLine()!.map{Character(String($0))}
//var isMinus: Bool = false
//
//var start: Int = 0
//var end: Int = 0
//var result: Int = 0
//
//
//let _0ascii = Character("0").asciiValue!
//let _9ascii = Character("9").asciiValue!
//
//while start < str.count {
//    while  _0ascii <= str[end].asciiValue! && str[end].asciiValue! <= _9ascii && end < str.count {
//        end += 1
//    }
//    if isMinus{
//        result -=
//    }else {
//        result +=
//    }
//    if str[end] == Character("-"){
//        isMinus = true
//    }
//    end += 1
//}
