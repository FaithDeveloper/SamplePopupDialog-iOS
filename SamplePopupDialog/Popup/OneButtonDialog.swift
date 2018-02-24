//
//  OneBttonDialog.swift
//  SamplePopupDialog
//
//  Created by 신규찬 on 2018. 2. 24..
//  Copyright © 2018년 신규찬. All rights reserved.
//

import UIKit

class OneButtonDialog: BaseDialogViewController{
    typealias Listener = () -> ()
    var listener: Listener?
    
    
    func setOnClickListener(listener: @escaping Listener){
        self.listener = listener
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func actionOK(_ sender: Any) {
        listener?()
        removeAnimate()
    }
}
