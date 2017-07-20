//
//  main.swift
//  IntegerProc
//
//  Created by Macbook Pro on 2017. 7. 21..
//  Copyright © 2017년 Eric Park. All rights reserved.
//

import Foundation

for _ in 0..<100000000 {
    let a = arc4random_uniform(UInt32(10000))
    let b = arc4random_uniform(UInt32(10000))
    let c = arc4random_uniform(UInt32(10000))
    var d = arc4random_uniform(UInt32(10000))
    while(d == 0) {
        d = arc4random_uniform(UInt32(10000))
    }
    
    let result = ((a + b) * c) / d
}
