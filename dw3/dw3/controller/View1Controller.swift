//
//  ViewController.swift
//  kuangjia
//
//  Created by Apple on 16/9/23.
//  Copyright © 2016年 框架. All rights reserved.
//

import UIKit

class View1Controller: BaseViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = MyColor().mistyRose;
        navView?.backgroundColor = MyColor().beigeColor;
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }


   
}

