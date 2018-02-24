//
//  UIViewControllerExtention.swift
//  TrueTrue
//
//  Created by sigong_shin on 2018. 2. 21..
//  Copyright © 2018년 sigongmedia. All rights reserved.
//

import UIKit

extension UIViewController {
    // MARK: 컨트롤뷰 추가 (화면이동)
    func insertChildController<T : UIViewController> (targetControllerName targetViewControllerName: String,  targetController targetViewController: T) {
        //childController:UIViewController,
        let childController = getViewControllerFromStoryBoard(targetControllerName: targetViewControllerName, targetController: targetViewController)
        
        self.addChildViewController(childController)
        childController.view.frame = (self.view.frame)
        
        self.view.addSubview(childController.view)
    }
    
    // MARK: 컨트롤뷰 추가 (화면이동)
    func insertChildController<T : UIViewController> (childController: T) {
        self.addChildViewController(childController)
        childController.view.frame = (self.view.frame)
        
        self.view.addSubview(childController.view)
    }
    
    // MARK: 컨트롤뷰 추가 (화면이동)
    func insertChildController<T : UIViewController> (storyboardName sbName: String,targetControllerName targetViewControllerName: String,  targetController targetViewController: T) {
        let childController = getViewControllerFromStoryBoard(storyboardName: sbName, targetControllerName: targetViewControllerName, targetController: targetViewController)
        
        self.addChildViewController(childController)
        childController.view.frame = (self.view.frame)
        
        self.view.addSubview(childController.view)
    }
    
    // MARK: 컨트롤뷰 대상 얻기
    func getViewControllerFromStoryBoard<T>(targetControllerName targetViewControllerName: String,  targetController targetViewController: T) -> T {
        let childController = self.storyboard?.instantiateViewController(withIdentifier: targetViewControllerName) as! T
        
        return childController
    }
    
    // MARK: 컨트롤뷰 대상 얻기
    func getViewControllerFromStoryBoard<T>(storyboardName sbName: String, targetControllerName targetViewControllerName: String,  targetController targetViewController: T) -> T {
        let childController = UIStoryboard(name: sbName, bundle: nil).instantiateViewController(withIdentifier: targetViewControllerName) as! T
        
        return childController
    }
    
    func closeViewFromChildController(){
        if self.view.superview != nil {
            self.view.removeFromSuperview()
        }
    }
}

