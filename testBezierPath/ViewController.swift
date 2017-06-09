//
//  ViewController.swift
//  testBezierPath
//
//  Created by NATON on 2017/6/8.
//  Copyright © 2017年 NATON. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let width: CGFloat = 240.0
        let height: CGFloat = 160.0
        
        let demoView = DemoView(frame: CGRect(x: self.view.frame.size.width/2-width/2,
                                              y: self.view.frame.size.height/2-height/2,
                                              width: width,
                                              height: height))
        self.view.addSubview(demoView)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

