//
//  DropItViewController.swift
//  DropIt
//
//  Created by 李天培 on 2016/12/22.
//  Copyright © 2016年 lee. All rights reserved.
//

import UIKit

class DropItViewController: UIViewController {

    @IBOutlet weak var gameView: DropItView! {
        didSet {
            gameView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(addDrop(_:))))
            gameView.addGestureRecognizer(UIPanGestureRecognizer(target: gameView, action: #selector(DropItView.grapDrop(gesture:))))
            gameView.realGravity = true
        }
    }

    func addDrop(_ gesture: UITapGestureRecognizer) {
        if gesture.state == .ended {
            gameView.addDrop()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        gameView.animating = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        gameView.animating = false
        
    }
}
