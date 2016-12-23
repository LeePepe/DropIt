//
//  NamedBezierPathsView.swift
//  DropIt
//
//  Created by 李天培 on 2016/12/23.
//  Copyright © 2016年 lee. All rights reserved.
//

import UIKit

class NamedBezierPathsView: UIView {

    var bezierPaths = [String : UIBezierPath]() { didSet { setNeedsDisplay() } }
    
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        for (_, path) in bezierPaths {
            path.stroke()
        }
    }
    

}
