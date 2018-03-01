//
//  MyUserDefaults.swift
//  kuangjia
//
//  Created by Apple on 16/9/23.
//  Copyright © 2016年 框架. All rights reserved.
//

import UIKit
import Foundation

class MyUserDefaults
{
    // 设置单例
    static var sharedInstance : MyUserDefaults {
        struct Static {
            static let instance : MyUserDefaults = MyUserDefaults()
        }
        return Static.instance
    }

    open  var name : String = "0";
    //保存数据
    public func set(value : Any , key : String){
        UserDefaults.standard.set(value, forKey:key);
        UserDefaults.standard.synchronize();
    }
    //读取数据
    public func object(key : String) -> Any?
    {
      return  UserDefaults.standard.object(forKey: key);
    }
    //移除数据
    public func removeObject(key : String)
    {
        UserDefaults.standard.removeObject(forKey: key);
    }
    
}
