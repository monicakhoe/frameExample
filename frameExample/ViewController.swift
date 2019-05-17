//
//  ViewController.swift
//  frameExample
//
//  Created by Monica Khoe on 17/05/19.
//  Copyright © 2019 Monica Khoe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewFrame: UIView!
    
    @IBOutlet weak var roundButton: UIButton!
    var currentX = 50.0
    var currentY = 100.0
    
    @IBAction func roundButton(_ sender: UIButton) {
        self.currentX = Double(Int.random(in: 0 ... 300))
        self.currentY = Double(Int.random(in: 0 ... 700))
        roundButton.backgroundColor = UIColor.init(red: CGFloat(Float.random(in: 0...1)), green: CGFloat(Float.random(in: 0...1)), blue: CGFloat(Float.random(in: 0...1)), alpha: CGFloat(Float.random(in: 0.1 ... 1.0)))
        UIView.animate(withDuration: 1) {
            self.roundButton.frame.origin.x = CGFloat(self.currentX)
            self.roundButton.frame.origin.y = CGFloat(self.currentY)
            
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        roundButton.layer.masksToBounds = true
        roundButton.layer.cornerRadius = roundButton.frame.width/2
        
//
//        UIView.animate(withDuration: 3, animations: {
//            self.viewFrame.frame = CGRect(x: 150, y: 200, width: 150, height: 100)
//            self.viewFrame.backgroundColor = UIColor.blue
//        })
//
//        UIView.animate(withDuration: 2, delay: 1, animations: {
//          self.viewFrame.center.x = CGFloat(80)
//            self.viewFrame.frame = CGRect(x: 150, y: 200, width: 100, height: 100)
//            self.viewFrame.backgroundColor = UIColor.red
//            self.viewFrame.center = CGPoint(x: 100, y: 300)
//            // opacity = alpha (range 0 sampai 1) 0 paling blur, 1 paling jelas
//            self.viewFrame.alpha = 0.2
//        })
    }


}

