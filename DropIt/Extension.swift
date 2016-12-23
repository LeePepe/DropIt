//
//  Extension.swift
//  DropIt
//
//  Created by 李天培 on 2016/12/22.
//  Copyright © 2016年 lee. All rights reserved.
//

import UIKit

extension CGFloat {
    static func random(max: Int) -> CGFloat {
        return CGFloat(arc4random() % UInt32(max))
    }
}

extension UIColor {
    class var random: UIColor {
        switch  arc4random() % 5 {
        case 0: return UIColor.gray
        case 1: return UIColor.green
        case 2: return UIColor.blue
        case 3: return UIColor.red
        case 4: return UIColor.purple
        default: return UIColor.black
        }
    }
}

extension CGRect {
    var mid:        CGPoint { return CGPoint(x: midX, y: midY) }
    var upperLeft:  CGPoint { return CGPoint(x: minX, y: minY) }
    var upperRight: CGPoint { return CGPoint(x: maxX, y: minY) }
    var lowerLeft:  CGPoint { return CGPoint(x: minX, y: maxY) }
    var lowerRight: CGPoint { return CGPoint(x: maxX, y: maxY) }
    
    init(center: CGPoint, size: CGSize) {
        let upperLeft = CGPoint(x: center.x - size.width / 2, y: center.y - size.height / 2)
        self.init(origin: upperLeft, size: size)
    }
}

extension UIView {
    func hitTest(point: CGPoint) -> UIView? {
        return hitTest(point, with: nil)
    }
}

extension UIBezierPath {
    class func line(from start: CGPoint, to end: CGPoint) -> UIBezierPath {
        let path = UIBezierPath()
        path.move(to: start)
        path.addLine(to: end)
        return path
    }
}
