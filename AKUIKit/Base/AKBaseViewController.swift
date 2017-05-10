//
//  AKBaseViewController.swift
//  Runner
//
//  Created by wangcong on 24/03/2017.
//  Copyright © 2017 ApterKing. All rights reserved.
//

import UIKit

public class AKBaseViewController: UIViewController, UIGestureRecognizerDelegate {
    
    public var isNavigationBarHiddenInController: Bool {
        return navigationBarHidden
    }
    fileprivate var navigationBarHidden = false;

    public override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
    }
    
    public override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    
    public override func viewDidLayoutSubviews() {
        super.viewWillLayoutSubviews()
    }
    
    public override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        navigationBarHidden = self.navigationController?.isNavigationBarHidden ?? false
    }
    
    public override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        if ((self.navigationController != nil) && (self.navigationController?.viewControllers.contains(self))! && (self.navigationController?.topViewController?.isKind(of: AKBaseViewController.self))!) {
            let controller: AKBaseViewController = self.navigationController?.topViewController as! AKBaseViewController
            self.navigationController?.setNavigationBarHidden(controller.isNavigationBarHiddenInController, animated: true)
        }
    }
    
    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public override var preferredStatusBarStyle: UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    
    public override var shouldAutorotate: Bool {
        return false
    }
    
    public override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return UIInterfaceOrientationMask.portrait
    }
    
    public override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return UIInterfaceOrientation.portrait
    }

}
