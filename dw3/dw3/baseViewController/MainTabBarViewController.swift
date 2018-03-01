//
//  MainTabBarViewController.swift
//  kuangjia
//
//  Created by Apple on 16/9/24.
//  Copyright © 2016年 框架. All rights reserved.
//

import UIKit

class MainTabBarViewController: UITabBarController ,MyTabBarDelegate{

    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil);
        self.plist(plist: "XMplist");
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad();
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    public func plist(plist :String) {
        //读取数据
        let plistPath : String? =  Bundle.main.path(forResource: plist, ofType: "plist");
        let array : NSArray = NSArray.init(contentsOfFile: plistPath!)!;
        let tabBarS  = NSMutableArray.init() ;
        
         guard   let name = Bundle.main.infoDictionary!["CFBundleExecutable"] as? String else {
            return
        }
        
        for var i  in 0..<array.count {
            let dict :NSDictionary = array[i] as! NSDictionary;
            let clsName : String = dict["CLASS_NAME"] as! String;
            var cls: AnyClass? = nil
            cls = NSClassFromString(name + "." + clsName)
            guard let typeClass = cls as? BaseViewController.Type else {
                return
            }
            let childController = typeClass.init()
            childController.navView?.setTitleText(titlestr: dict["NAVBAR_TITLE_IMAGE_NAME"] as! String)
            tabBarS.add(MainNavigationController.init(rootViewController: childController, inStyle: .UINavigation_Left))
            i = i + 1
     }
        self.viewControllers = tabBarS as? [UIViewController]
        
        //创建视图
        let mytabBar : MyTabBar = MyTabBar.init(frame: CGRect.init(x: self.tabBar.bounds.origin.x, y: self.tabBar.bounds.origin.y, width: self.tabBar.bounds.size.width, height: self.tabBar.bounds.size.height));
        mytabBar.index = array.count ;
        mytabBar.delegate = self ;
        self.tabBar.addSubview(mytabBar);
         for var i  in 0..<array.count {
             let dict :NSDictionary = array[i] as! NSDictionary;
            mytabBar.additem(imageName: dict.object(forKey: "TABBAR_IMAGE_NORMAL") as! String, selImageName: dict.object(forKey: "TABBAR_IMAGE_SELECTED") as! String, name: dict.object(forKey: "TABBAR_IMAGE_NAME") as! String);
            i = i + 1
        }
    }
    
    func didSelectItem(tabBar : MyTabBar,toIndex : NSInteger ,fromIndex :NSInteger ){
        self.selectedIndex = toIndex;
    }
}
