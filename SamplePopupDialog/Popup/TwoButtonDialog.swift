//
//  TwoButtonDialog.swift
//  SamplePopupDialog
//
//  Created by 신규찬 on 2018. 2. 24..
//  Copyright © 2018년 신규찬. All rights reserved.
//

import UIKit

class TwoButtonDialog: BaseDialogViewController{
    enum ListenerType {
        case confirm
        case cancel  
    }
    
    typealias Listener = (ListenerType) -> ()
    var listener: Listener?
    
    
    func setOnClickListener(listener: @escaping Listener){
        self.listener = listener
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func actionConfirm(_ sender: Any) {
        listener?(ListenerType.confirm)
        removeAnimate()
    }
    
    @IBAction func actionCancel(_ sender: Any) {
        listener?(ListenerType.cancel)
        removeAnimate()
    }
}

