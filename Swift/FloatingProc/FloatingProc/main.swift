//
//  main.swift
//  FloatingProc
//
//  Created by Macbook Pro on 2017. 7. 21..
//  Copyright © 2017년 Eric Park. All rights reserved.
//

import Foundation

for _ in 0..<100000000 {
    let a = (Float(arc4random()) / Float(UINT32_MAX)) * 10000
    let b = (Float(arc4random()) / Float(UINT32_MAX)) * 10000
    let c = (Float(arc4random()) / Float(UINT32_MAX)) * 10000
    var d = (Float(arc4random()) / Float(UINT32_MAX)) * 10000
    
    while(d == 0) {
        d = (Float(arc4random()) / Float(UINT32_MAX)) * 10000
    }
    
    let result = ((a + b) * c) / d
}
