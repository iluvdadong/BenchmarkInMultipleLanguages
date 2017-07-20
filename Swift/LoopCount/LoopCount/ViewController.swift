//
//  ViewController.swift
//  LoopCount
//
//  Created by Macbook Pro on 2017. 7. 20..
//  Copyright © 2017년 Eric Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var count: Int = 0
        var isEnd: Bool = false
        
        let thread = Thread {
            while isEnd == false {
                count += 1
            }
            print(count)
            fatalError()
        }
        
        thread.start()
        
        _ = Timer.scheduledTimer(withTimeInterval: 1, repeats: false) { (timer) in
            isEnd = true
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

