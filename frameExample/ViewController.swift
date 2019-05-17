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
            self.viewFrame.frame = CGRect(x: 150, y: 200, width: 80, height: 50)
            self.viewFrame.backgroundColor = UIColor.blue
        })
    }


}

