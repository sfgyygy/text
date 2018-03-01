//
//  BaseViewController.swift
//  kuangjia
//
//  Created by Apple on 16/9/26.
//  Copyright © 2016年 框架. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController,NavViewDelegate{

    open var titlestr : String? ;
    
    open var navView : NavView?;
    //设置导航栏的文字
    public  convenience init(nav_str : String){
        self.init(nibName: nil, bundle: nil);
    }
    
    public  convenience init(dict:NSDictionary)
    {
        self.init(nibName:nil,bundle:nil)
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        fatalError("init(coder:) has not been implemented")
        
    }

    
     override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil);
        self.navigationController?.setNavigationBarHidden(false, animated: false);
        navView = NavView.init(frame: CGRect.init());
        navView?.backgroundColor = UIColor.white ;
        navView?.delegate = self;
        self.view.addSubview(navView!);
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
//NavView的代理
    public  func isreturn() {
        
    }
    
    public func rightClick() {
        
    }
}
