//
//  ViewController.swift
//  IntegerProc
//
//  Created by NHNNEXT on 2017. 7. 20..
//  Copyright © 2017년 Eric Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
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
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

