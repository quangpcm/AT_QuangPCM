//
//  RootController.swift
//  Bai 6
//
//  Created by Quang Phu on 6/24/16.
//  Copyright © 2016 Quang Phu. All rights reserved.
//

import UIKit

class RootController: UIViewController {

    var isLoad = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
    }
    
    override func viewDidAppear(animated: Bool) {
        if !isLoad {
            let screenFrame = self.view.frame
            let sliderWidth: CGFloat = 80
            let sliderHeigth: CGFloat = 300
            
            let sliderFrame = CGRectMake(screenFrame.width / 2 - sliderWidth / 2, screenFrame.height / 2 - sliderWidth / 2, sliderWidth, sliderHeigth)
            
            let myslider = NSBundle.mainBundle().loadNibNamed("CustomSlider", owner: nil, options: nil).last as! CustomSlider
            myslider.frame = sliderFrame
            
            self.view.addSubview(myslider)
            isLoad = true
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
   
}