

import UIKit

import SceneKit

let SCREEN_WIDTH1 = UIScreen.main.bounds.size.width



public class Helpr {
//判断版本
    public func IS_IOS_VERSION(version : Double) ->Bool { return (UIDevice.current.systemVersion as NSString).doubleValue >= version }
    
//屏幕的宽
    public var SCREEN_WIDTH: CGFloat
        {
        get {
            return UIScreen.main.bounds.size.width
        }
    }
//pungm的搞
    public var SCREEN_HEIGHT: CGFloat
        {
        get {
            return UIScreen.main.bounds.size.height
        }
    }
//判断是否是苹果4
    public func IS_IPHONE4() ->Bool
    {
        if self.SCREEN_WIDTH == 320 && self.SCREEN_HEIGHT == 480 {
            return true ;
        }
        return false ;
    }
//判断是否是苹果5
    public func IS_IPHONE5() ->Bool
    {
        if self.SCREEN_WIDTH == 320 && self.SCREEN_HEIGHT == 568 {
            return true ;
        }
        return false ;
    }
//判断是否是苹果6
    public func IS_IPHONE6() ->Bool
    {
        if self.SCREEN_WIDTH == 375 && self.SCREEN_HEIGHT == 667 {
            return true ;
        }
        return false ;
    }
//判断是否是苹果6p
    public func IS_IPHONE6P() ->Bool
    {
        if self.SCREEN_WIDTH == 414 && self.SCREEN_HEIGHT == 736 {
            return true ;
        }
        return false ;
    }
//判断是否第1次登录的键
    public var ISFIRST:String
        {
        get{
            return "ISFIRST";
        }
    }
    
    public func Image(name : String) -> UIImage {
        return UIImage.init(named: name)!
    }
}
