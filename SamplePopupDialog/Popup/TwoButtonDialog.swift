//
//  TwoButtonDialog.swift
//  SamplePopupDialog
//
//  Created by 신규찬 on 2018. 2. 24..
//  Copyright © 2018년 신규찬. All rights reserved.
//

import UIKit

class TwoButtonDialog: BaseDialogViewController{
    // Listener 호출 시 전달된 데이터
    enum ListenerType {
        case confirm
        case cancel  
    }
    
    // 클로저 타입 선언
    typealias Listener = (ListenerType) -> ()
    var listener: Listener?
    
    // 버튼 클릭에 따른 호출 될 함수
    func setOnClickListener(listener: @escaping Listener){
        self.listener = listener
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func actionConfirm(_ sender: Any) {
        // 등록한 리스너가 존재할 경우 호출
        listener?(ListenerType.confirm)
        removeAnimate()
    }
    
    @IBAction func actionCancel(_ sender: Any) {
        // 등록한 리스너가 존재할 경우 호출
        listener?(ListenerType.cancel)
        removeAnimate()
    }
}

