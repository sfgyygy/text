//
//  MainNavigationController.swift
//  kuangjia
//
//  Created by Apple on 16/9/24.
//  Copyright © 2016年 框架. All rights reserved.
//

import UIKit
//强制设置很竖屏
public enum ENUM_ActionType : Int {
    
    case UINavigation_Portrait
    
    case UINavigation_Left
    
    case UINavigation_Right
}

class MainNavigationController: UINavigationController 
{

    var  InStyle:ENUM_ActionType?;
    
    public  init(rootViewController:UIViewController,inStyle:ENUM_ActionType)  {
        super.init(rootViewController: rootViewController);
        InStyle = inStyle;
        self.isNavigationBarHidden = true ;
    }
    
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController);
    }
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil);
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open override func pushViewController(_ viewController: UIViewController, animated: Bool) {
        if( self.viewControllers.count > 0) {
            viewController.hidesBottomBarWhenPushed = true;
        }
        super.pushViewController(viewController, animated: animated);
    }
    
    public func ViewControllerForStatusBarStyle() ->UIViewController?
    {
        return self.topViewController;
    }
    
    override var shouldAutorotate: Bool {
        return false;
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask
        {
        if InStyle == .UINavigation_Portrait {
            return .portrait;
        }else if(InStyle == .UINavigation_Left){
            return .landscapeLeft;
        }else if(InStyle == .UINavigation_Right){
            return .landscapeRight;
        }else{
            return .portrait;
        }
    }
    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation
    {
        if self.InStyle == .UINavigation_Portrait {
            return .portrait;
        }else if(self.InStyle == .UINavigation_Left){
            return .landscapeLeft;
        }else if(self.InStyle == .UINavigation_Right){
            return .landscapeRight;
        }else{
            return .portrait;
        }
    }
//    override func viewDidAppear(_ animated: Bool) {
//        super.viewDidAppear(animated);
//        self.supportedInterfaceOrientations;
//    }
    
//    override func setNavigationBarHidden(_ hidden: Bool, animated: Bool) {
//        self.isNavigationBarHidden = true ;
//    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      //  print(InStyle);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
