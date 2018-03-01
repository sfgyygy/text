//
//  Listeningkeyboard.swift
//  kuangjia
//
//  Created by Apple on 16/9/28.
//  Copyright © 2016年 框架. All rights reserved.
//

import UIKit

typealias keyboardWillShow = (_ highly:CGFloat)->Void;
typealias keyboardWillHide = (_ highly:CGFloat)->Void;

class Listeningkeyboard : NSObject
{
//     设置单例
    static var sharedInstance : Listeningkeyboard {
        struct Static {
            static let instance : Listeningkeyboard = Listeningkeyboard()
        }
        return Static.instance
    }

    var myboardWillShow : keyboardWillShow? ;
    var myboardWillHide : keyboardWillHide? ;
    var myboard_h : CGFloat = 0.0;
    //调用
    public class func start(boardWillShow : keyboardWillShow?, boardWillHide: keyboardWillHide?){
       Listeningkeyboard.sharedInstance.myboardWillShow = boardWillShow;
       Listeningkeyboard.sharedInstance.myboardWillHide = boardWillHide;
       Listeningkeyboard.sharedInstance.startlistening();
    }
    //取消监听
    public func stop (){
        NotificationCenter().removeObserver(self, name: NSNotification.Name.UIKeyboardWillShow, object: nil);
        NotificationCenter().removeObserver(self, name: NSNotification.Name.UIKeyboardWillHide, object: nil);
    }
    //监听键盘
    func startlistening()
    {
        Listeningkeyboard.sharedInstance.stop();
        NotificationCenter().addObserver(self, selector:#selector(Listeningkeyboard.keyboardWillShow), name: NSNotification.Name.UIKeyboardWillShow, object: nil)
        NotificationCenter().addObserver(self, selector:#selector(Listeningkeyboard.boardWillHide), name: NSNotification.Name.UIKeyboardWillHide, object: nil)
    }
    //键盘上来的回调
    func keyboardWillShow(aNotification : Notification) {
        let userInfo : NSDictionary = aNotification.userInfo! as NSDictionary
        let aValue = userInfo.object(forKey: UIKeyboardFrameEndUserInfoKey)
        let keyboardRect : CGRect = aValue as! CGRect
        myboard_h = keyboardRect.size.height
        if (myboardWillShow != nil) {
            myboardWillShow!(CGFloat(myboard_h))
        }
    }
    //键盘下去的回调
    func boardWillHide(){
        if (myboardWillHide != nil) {
            myboardWillHide!(CGFloat(myboard_h))
        }
    }
    //关闭所有键盘
   public  func endEditing() {
        UIApplication.shared.keyWindow?.endEditing(true)
    }
}
