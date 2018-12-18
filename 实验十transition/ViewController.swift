//
//  ViewController.swift
//  实验十transition
//
//  Created by student on 2018/12/13.
//  Copyright © 2018年 baoxinbei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myView: UIView!
    
    var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func btnClicked(_ sender: Any) {
        UIView.transition(with: myView, duration: 1, options: .transitionFlipFromLeft, animations: {
            self.myView.backgroundColor = UIColor.gray
        }, completion: nil)
    }
    
    @IBAction func btnClicked1(_ sender: Any) {
        let imageView = UIImageView(frame: CGRect(x: 100, y: 100, width: 200, height: 200))
        imageView.image = UIImage(named: "1")
        UIView.transition(from: myView, to: imageView, duration: 2, options: .transitionFlipFromRight, completion: nil)
    }
}

