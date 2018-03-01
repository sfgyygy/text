//
//  MyTabBar.swift
//  kuangjia
//
//  Created by Apple on 16/9/26.
//  Copyright © 2016年 框架. All rights reserved.
//

import UIKit

public class MyTabBar: UIImageView {
    
    var delegate: MyTabBarDelegate? ;
    var preSelBtn: UIButton? ;
    var imageArray : NSMutableArray? =  NSMutableArray.init(capacity: 10);
    var imageArray1 : NSMutableArray? =  NSMutableArray.init(capacity: 10) ;
    open var index : NSInteger?  = 1;
    
    override init(frame: CGRect){
        super.init(frame: frame) ;
        self.backgroundColor = UIColor.black ;
        self.isUserInteractionEnabled = true ;
    }
    
    
    func  additem(imageName:String , selImageName: String , name : String){
        imageArray?.add(imageName);
        imageArray1?.add(selImageName);
        let btn : UIButton = UIButton.init();
        let btn1 : UIImageView = UIImageView.init(frame:CGRect.init(x: (self.bounds.size.width / CGFloat.init(index!) / 2 - 12), y: 5, width: 26, height: 26));
        btn1.image = UIImage.init(named: imageName);
        btn1.tag = 200 ;
        btn.addSubview(btn1);
        let label = UILabel.init(frame: CGRect.init(x: (self.bounds.size.width / CGFloat.init(index!) / 2 - 30), y: 25, width: 60, height: 30));
        label.font = UIFont.systemFont(ofSize: 12);
        label.numberOfLines = 0;
        label.textColor = UIColor.init(red: 0.61, green: 0.61, blue: 0.61, alpha: 1);
        label.textAlignment = NSTextAlignment.center;
        label.text = name ;
        label.tag = 100 ;
        btn.addSubview(label);
        if (self.subviews.count == 0){
            preSelBtn = btn;
            btn1.image = UIImage.init(named: selImageName);
            label.textColor = UIColor.init(red: 1, green: 0.4, blue: 0, alpha: 1);
        }
        btn.addTarget(self, action:#selector(btnClick(btn:)) , for:.touchUpInside);
        btn.tag = self.subviews.count + 10 ;
        self.addSubview(btn);
    }
    
    public func btnClick(btn : UIButton){
        let fromIndex : NSInteger = (preSelBtn?.tag)! - 10;
        let label : UILabel = self.preSelBtn?.viewWithTag(100) as! UILabel ;
        label.textColor = UIColor.init(red: 0.61, green: 0.61, blue: 0.61, alpha: 1);
        let btn1 :UIImageView = self.preSelBtn?.viewWithTag(200) as! UIImageView;
        btn1.image = UIImage.init(named: imageArray?[self.preSelBtn!.tag-10] as! String);
        
        preSelBtn = btn;
        let label1 : UILabel = self.preSelBtn?.viewWithTag(100) as! UILabel ;
        label1.textColor = UIColor.init(red: 1, green: 0.4, blue: 0, alpha: 1);
        print(label1)
        let btn2 :UIImageView = self.preSelBtn?.viewWithTag(200) as! UIImageView;
        btn2.image = UIImage.init(named: imageArray1?[self.preSelBtn!.tag-10] as! String);
        
        delegate?.didSelectItem(tabBar: self, toIndex: (preSelBtn?.tag)! - 10, fromIndex: fromIndex);
    }
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews() ;
        let count = self.subviews.count;
        let btnY : CGFloat = 0 ;
        let btnW : CGFloat = self.bounds.size.width / CGFloat.init(count);
        let btnH : CGFloat = self.bounds.size.height;
        for var i   in 0..<self.subviews.count {
            let btn  = self.subviews[i];
            let btnX : CGFloat = btnW * CGFloat.init(i) ;
            btn.frame = CGRect.init(x: btnX, y: btnY, width: btnW, height: btnH);
            i = i + 1;
        }
    }
    
}
public protocol MyTabBarDelegate {
    func didSelectItem(tabBar : MyTabBar,toIndex : NSInteger ,fromIndex :NSInteger );
}
