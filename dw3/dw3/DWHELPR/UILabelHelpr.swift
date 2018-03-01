//
//  UILabelHelpr.swift
//  kuangjia
//
//  Created by Apple on 16/9/28.
//  Copyright © 2016年 框架. All rights reserved.
//

import UIKit

class UILabelHelpr
{
    
    public var color : UIColor = UIColor.black;
    
    public func label(frame: CGRect, text:String , size :CGFloat ,style :UInt ,textColor : UIColor) -> UILabel
    {
        let mylabel :UILabel = UILabel.init(frame: frame);
        mylabel.text = text;
        mylabel.font = UIFont.systemFont(ofSize: size);
        if style == 0 {
            mylabel.textAlignment = NSTextAlignment.left;
        }else if style == 1{
            mylabel.textAlignment = NSTextAlignment.center;
        }else if style == 2{
            mylabel.textAlignment = NSTextAlignment.right;
        }
        mylabel.textColor = textColor;
        return mylabel;
    }
    
    public func label (frame: CGRect, text:String , size :CGFloat ,style :UInt ) ->UILabel{
      return  self.label(frame: frame, text: text, size: size, style: style, textColor: color);
    }
    
    public func label (frame: CGRect, text:String , size :CGFloat  ) ->UILabel{
        return  self.label(frame: frame, text: text, size: size, style: 1, textColor: color);
    }
    
    public func label (frame: CGRect, text:String , size :CGFloat ,textColor : UIColor ) ->UILabel{
        return  self.label(frame: frame, text: text, size: size, style: 1, textColor: textColor);
    }
}

class UIButtonHelpr
{
    public var color : UIColor = UIColor.black;
    public var color1 : UIColor = UIColor.black;
    public var bgcolor : UIColor = UIColor.white;
    public var bgcolor1 : UIColor = UIColor.white;
    
    public func button(frame : CGRect , text : String , textColor : UIColor , bgColor : UIColor , bkColor : UIColor? , b kwidth : CGFloat , cornerRadius : CGFloat ,_ target: Any?, action: Selector) -> UIButton {
        
        let btn : UIButton = UIButton.init(frame: frame);
        btn.setTitle(text, for: UIControlState.normal);
        btn.setTitleColor(textColor, for: UIControlState.normal);
        btn.backgroundColor = bgColor;
        btn.layer.cornerRadius = cornerRadius;
        btn.layer.borderWidth = kwidth;
        btn.layer.backgroundColor = bkColor?.cgColor;
        btn.addTarget(target, action: action, for: UIControlEvents.touchUpInside);
        return btn;
    }
    
    public func button(frame : CGRect , text : String , textColor : UIColor , bgColor : UIColor , cornerRadius : CGFloat ,_ target: Any?, action: Selector) -> UIButton {
        
        return self.button(frame: frame, text: text, textColor: textColor, bgColor: bgColor, bkColor: nil, b: 0, cornerRadius: cornerRadius, target, action: action);
    }
    
    public func button(frame : CGRect , text : String , textColor : UIColor , bgColor : UIColor ,_ target: Any?, action: Selector) -> UIButton {
        
        return self.button(frame: frame, text: text, textColor: textColor, bgColor: bgColor, bkColor: nil, b: 0, cornerRadius: 0, target, action: action);
    }
    
    public func button(frame : CGRect , text : String , textColor : UIColor ,_ target: Any?, action: Selector) -> UIButton {
        
        return self.button(frame: frame, text: text, textColor: textColor, bgColor: self.bgcolor, bkColor: nil, b: 0, cornerRadius: 0, target, action: action);
    }
    
    public func button(frame : CGRect , text : String , _ target: Any?, action: Selector) -> UIButton {
        return self.button(frame: frame, text: text, textColor: self.color, bgColor: self.bgcolor, bkColor: nil, b: 0, cornerRadius: 0, target, action: action);
    }
    
    public func button(frame : CGRect , image:UIImage,_ target: Any?, action: Selector) -> UIButton{
        let btn : UIButton = UIButton.init(frame: frame );
        btn.setBackgroundImage(image, for: UIControlState.normal);
        btn.addTarget(target, action: action, for: UIControlEvents.touchUpInside);
        return btn;
    }
}

class UIViewHelpr
{
    public func  view(frame:CGRect , bgColor : UIColor) -> UIView {
        let view : UIView = UIView.init(frame: frame);
        view.backgroundColor  = bgColor;
        view.isUserInteractionEnabled = true;
        return view;
    }
}

class UITextFieldHelpr {
    public func textField(frame : CGRect ,placeholder : String , borderStyle:UITextBorderStyle , isbool : Bool) -> UITextField
    {
        let textField : UITextField = UITextField.init(frame: frame);
        textField.placeholder = placeholder;
        textField.borderStyle = borderStyle;
        if isbool {
            textField.isSecureTextEntry = true;
        }
        textField.clearButtonMode = UITextFieldViewMode.whileEditing;
        textField.backgroundColor = UIColor.white ;
        textField.keyboardType =  UIKeyboardType.default ;
        return textField ;
    }
    
    
    public func textField(frame : CGRect ,placeholder : String , borderStyle:UITextBorderStyle ) -> UITextField
    {
        return self.textField(frame: frame, placeholder: placeholder, borderStyle: borderStyle, isbool: false);
    }
}

class UIScrollViewHelpr
{
    
}
