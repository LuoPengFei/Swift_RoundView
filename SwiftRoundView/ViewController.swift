//
//  ViewController.swift
//  SwiftRoundView
//
//  Created by Pengfei_Luo on 15/12/22.
//  Copyright © 2015年 骆朋飞. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let imageArray = ["1.jpg","2.jpg","3.jpg","4.jpg"]
        let roundView = RoundView(frame: CGRectMake(0, 20, UIScreen.mainScreen().bounds.size.width, 150), imageList: imageArray)
        self.view.addSubview(roundView)
        
        roundView.delegate = self
        
//        roundView.didSelectedRoundViewBlock = {
//            (index) -> Void in
//                debugPrint(index)
//        }
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController : RoundViewDelegate {
    func roundViewDidSelectedAtIndex(index: NSInteger) {
        debugPrint(index)
    }
}

