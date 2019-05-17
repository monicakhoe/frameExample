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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        UIView.animate(withDuration: 3, animations: {
            self.viewFrame.frame = CGRect(x: 150, y: 200, width: 150, height: 100)
            self.viewFrame.backgroundColor = UIColor.blue
        })
        
        UIView.animate(withDuration: 1, delay: 3, animations: {
//          self.viewFrame.center.x = CGFloat(80)
            self.viewFrame.frame = CGRect(x: 150, y: 200, width: 80, height: 50)
            self.viewFrame.backgroundColor = UIColor.red
            self.viewFrame.center = CGPoint(x: 180, y: 200)
        })
    }


}

