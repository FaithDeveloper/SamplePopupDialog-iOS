//
//  ViewController.swift
//  SamplePopupDialog
//
//  Created by 신규찬 on 2018. 2. 24..
//  Copyright © 2018년 신규찬. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var name = "name"
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func actionOneButtonDialog(_ sender: Any) {
        let dialog = getViewControllerFromStoryBoard(storyboardName: "Popup", targetControllerName: "OneButtonDialog", targetController: OneButtonDialog())
            dialog.setOnClickListener {
                print("One Button Dialog : OK Click")
            }
        
         insertChildController(childController: dialog)
        
       
    }
    
    @IBAction func actionTwoButtonDialog(_ sender: Any) {
        let dialog = getViewControllerFromStoryBoard(storyboardName: "Popup", targetControllerName: "TwoButtonDialog", targetController: TwoButtonDialog())
        dialog.setOnClickListener { (type) in
            switch type {
            case .confirm:
                   print("Two Button Dialog : Confirm Click")
            case .cancel:
                   print("Two Button Dialog : Cancel Click")
            }
        }
        insertChildController(childController: dialog)
    }
}

