//
//  RootViewController.swift
//  dw3
//
//  Created by Apple on 2017/8/8.
//  Copyright © 2017年 i-qlady. All rights reserved.
//

import UIKit

class RootViewController {
    
    public func chooseRootViewControllerWithwindow(window:UIWindow) {
        let currentVersion : String = Bundle.main.infoDictionary!["CFBundleShortVersionString"] as! String
        let defaults = UserDefaults.standard
        
        let   sandbocVersion : String? = defaults.value(forKey:"sandboxVersion") as? String
            if ((sandbocVersion == nil)||(currentVersion.compare(sandbocVersion! as String) == .orderedDescending) )  {
                defaults.set(currentVersion, forKey: "sandboxVersion")
                let tab : MainTabBarViewController  = MainTabBarViewController()
                window.rootViewController = tab
            }else {
                let tab : MainTabBarViewController  = MainTabBarViewController()
                window.rootViewController = tab
             //   #if  release
                    self.test()
            //    #endif
            }
        window.makeKeyAndVisible();
    }
    
    func test()  {
        let storeString : String = "http://itunes.apple.com/lookup?id=" + ProjectConfiguration().appID()
        let storeURL : URL =  URL.init(string: storeString)!
        let request : NSMutableURLRequest = NSMutableURLRequest.init(url: storeURL )
        request.httpMethod = "GET"
        let queue : OperationQueue = OperationQueue.init()
        NSURLConnection.sendAsynchronousRequest(request as URLRequest, queue:queue) { (res, data, error)in
            if error == nil && (data?.count)! > 0{
                var appData : NSDictionary?
                do {
                    appData  = try JSONSerialization.jsonObject(with: data!, options:.allowFragments) as? NSDictionary
                } catch { return }
                DispatchQueue.main.sync {
                    let  versionsInAppStore :String? = ((appData?["results"]  as! NSArray)[0] as!NSDictionary)["version"] as? String
                    if (versionsInAppStore == nil) {
                        return ;
                    }else {
                        let currentAppStoreVersion : String  = versionsInAppStore!
                        let currentVersion : String = Bundle.main.infoDictionary!["CFBundleShortVersionString"]as! String
                        if (currentVersion.compare(currentAppStoreVersion) == ComparisonResult.orderedAscending)
                        {
                            let alert : UIAlertController = UIAlertController.init(title: "版本升级", message: "发现新版本(%@),是否更新", preferredStyle:.alert)
                            let cancelAction = UIAlertAction.init(title: "Cancel", style:.cancel, handler: { (action: UIAlertAction) in
                                /**
                                 写取消后操作
                                 */
                            })
                            let okAction = UIAlertAction.init(title: "Ok", style:.default, handler: { (action: UIAlertAction) in
                                /**
                                 写确定后操作
                                 */
                            })
                            alert.addAction(cancelAction)
                            alert.addAction(okAction)
                            print("aaaaaaaa");
                            //  self.presentViewController(alert, animated: true, completion: nil)
                        }
                    }
                }
            }
        }

    }
    
    
}
