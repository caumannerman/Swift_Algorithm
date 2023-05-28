//
//  main.swift
//  Swift_Algorithm
//
//  Created by 양준식 on 2023/05/16.
//
import Foundation


let n: Int = Int(readLine()!)!
var data: [Int] = Array(repeating: 0, count: n)

for i in 0 ..< n {
    data[i] = Int(readLine()!)!
}

if n == 1  {
    print(data[0])
    exit(0)
}
if n == 2 {
    print(data[0] + data[1])
    exit(0)
}


var result: [(Int, Int)] = Array(repeating: (0, 0), count: n)
result[0] = ( data[0], data[0])
result[1] = ( data[0] + data[1], data[1])


for i in 2 ..< data.count {
    result[i] = (data[i] + result[i - 1].1, data[i] + max(result[i - 2].0, result[i - 2].1))
    
}

print(max(result[n - 1].0, result[n - 1].1))







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
