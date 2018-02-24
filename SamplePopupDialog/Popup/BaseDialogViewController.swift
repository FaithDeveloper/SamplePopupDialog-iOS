//
//  BasePopViewController.swift
//  SampleBluetoothConnect
//
//  Created by sigong_shin on 2018. 2. 20..
//  Copyright © 2018년 kcs. All rights reserved.
//

import UIKit

class BaseDialogViewController: UIViewController {
    
    //    let language:Language = Language.sharedInstance
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let color = UIColor(red: 51 / 255, green: 51 / 255, blue:  51 / 255, alpha: 0.95)
        self.view.backgroundColor = color
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        //        removeAnimate()
    }
    
    func showAnimate() {
        self.view.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
        self.view.alpha = 0.0
        UIView.animate(withDuration: 0.25, animations: {
            self.view.alpha = 1.0
            self.view.transform = CGAffineTransform.init(scaleX: 1.0, y: 1.0)
        })
    }
    
    func removeAnimate() {
        UIView.animate(withDuration: 0.25, animations: {
            self.view.transform = CGAffineTransform.init(scaleX: 1.3, y: 1.3)
            self.view.alpha = 0.0
        }, completion: { finished in
            self.view.removeFromSuperview()
        })
    }
}


