//
//  ViewController.swift
//  swiftPractice
//
//  Created by MacBook Pro on 2019/3/8.
//  Copyright © 2019年 MacBookPro. All rights reserved.
//

import UIKit
import SnapKit
class ViewController: UIViewController {
    let Button = UIButton.init(frame: CGRect(x: 100, y: 200, width: 200, height: 20))
     let label = UILabel ()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
        self.view.addSubview(label)
        label.text = "I am the king of the world"
        label.textColor = UIColor.black
        label.font = UIFont.systemFont(ofSize: 18)
        label.snp.makeConstraints { (make) in
           // make.top.equalToSuperview()
            make.centerX.equalToSuperview()
           // make.centerY.equalToSuperview()
            make.top.equalToSuperview().offset(20)
        }
        
        
      
        self.view.addSubview(Button)
        Button.layer.borderWidth = 1;
       
        
        Button.setTitle("123456", for: UIControl.State.normal)
        Button.setTitleColor(UIColor.yellow, for: UIControl.State.highlighted)
         Button.layer.borderColor = UIColor.blue.cgColor
         Button.layer.borderWidth = 1
        Button.layer.cornerRadius = 5
        Button.setTitleColor(UIColor.blue, for: UIControl.State.normal)
       // [Button.setTitleColor(UIColor(red: 30.0/255, green: 55.0/255, blue: 65.0/255, alpha: 1), for: UIControl.State.normal)];
//        [Button .addTarget(target(forAction: #touchupu, withSender: AnyIndex), action: @selector, for: UIControl.Event.touchUpInside)];
//        [Button.addTarget(target(forAction: target(forAction:@selector(#parmas), withSender: "124"), withSender: AnyClass), action: Selector, for: UIControl.Event.touchUpInside)];
//        [Button.addTarget(self, action:#selector(touchupinside:), for: uicontrol.event.touchup)];
        Button.addTarget(self, action: #selector(changeFontFamily), for: UIControl.Event.touchUpInside)
       Button.titleLabel?.text = "change label font"
        
        
        
    }

    @objc func changeFontFamily(Button:UIButton){
    print("1")
       
        Button.isSelected = !Button.isSelected
        
        if Button.isSelected{
            print("按钮选中")
             label.text = "12345"
        }else{
            print("按钮没有选中")
            label.text = "12" 
        }
        
    }

}

