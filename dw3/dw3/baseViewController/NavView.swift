//
//  NavView.swift
//  kuangjia
//
//  Created by Apple on 16/9/27.
//  Copyright © 2016年 框架. All rights reserved.
//
//－－－－－－－－－－－－－－－－－－－－－－－导航栏－－－－－－－－－－－－－－－－－－－－－－－－－－－－－－


import UIKit

public protocol NavViewDelegate
{
    func isreturn();
    func rightClick();
}


//导航栏的样式
public enum NAV_STYLE : Int {
    case Normal    //默认 无 returnbtn rightButton
    case Isreturn  //有 titLabel returnbtn 无 rightButton
    case All       //有 titLabel returnbtn rightButton
    case NotAll    //都没有
    case IsRight   // 有 titLabel rightButton 无 returnbtn
}

class NavView: UIView {
    
    public var style : NAV_STYLE = .Normal
    
    var title_text : String?
    
    open var delegate : NavViewDelegate?;
//左边的返回的按钮
    lazy  public var returnbtn : UIButton = {
        let btn : UIButton = UIButton.init(frame: CGRect.init(x: 20, y: 28, width: 20, height: 25))
        btn.addTarget(self, action:#selector(fanhui), for: UIControlEvents.touchUpInside)
        btn.setBackgroundImage(Helpr().Image(name:"name"), for: UIControlState.normal)
        self.addSubview(btn)
        return btn
    }()
//中间显示的label
    lazy  public  var titLabel : UILabel = {
        let label : UILabel =  UILabel.init(frame: CGRect.init(x: 0, y: 27, width: Helpr().SCREEN_WIDTH, height: 30))
        label.textAlignment = NSTextAlignment.center
        self.addSubview(label)
        return label
    }()
//左边的按钮
    lazy  public var rightButton : UIButton = {
        let btn : UIButton = UIButton.init(frame: CGRect.init(x:Helpr().SCREEN_WIDTH -  40, y: 28, width: 20, height: 25))
        btn.addTarget(self, action:#selector(rightClick), for: UIControlEvents.touchUpInside)
        self.addSubview(btn)
        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: CGRect.init(x: 0, y: 0, width: Helpr().SCREEN_WIDTH, height: 64));
        title_text = nil
        style = .Normal
    }
    
    convenience init(frame: CGRect ,nav_style :NAV_STYLE ,TitleText :String) {
        self.init(frame: frame);
        style = nav_style
        title_text = TitleText
        self.setTitleText(titlestr:title_text!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setStyle(nav_style : NAV_STYLE){
        style = nav_style;
        if style == .Normal {
            returnbtn.alpha = 0
            rightButton.alpha = 0
            titLabel.alpha = 1
        }else if style == .Isreturn
        {
            returnbtn.alpha = 1
            rightButton.alpha = 0
            titLabel.alpha = 1
        }else if style == .All
        {
            returnbtn.alpha = 1
            rightButton.alpha = 1
            titLabel.alpha = 1
        }else if style == .NotAll {
            returnbtn.alpha = 0
            rightButton.alpha = 0
            titLabel.alpha = 0
        }else if style == .IsRight
        {
            returnbtn.alpha = 0
            rightButton.alpha = 1
            titLabel.alpha = 1
        }
    }
    
    public func setTitleText(titlestr : String){
        titLabel.text = titlestr;
        titLabel.alpha = 1
    }
    
    public func fanhui(){
        delegate?.isreturn()
    }
    
    public func rightClick(){
        delegate?.rightClick()
    }
}
