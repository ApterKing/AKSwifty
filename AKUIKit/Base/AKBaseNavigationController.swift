//
//  AKBaseNavigationController.swift
//  Runner
//
//  Created by wangcong on 24/03/2017.
//  Copyright © 2017 ApterKing. All rights reserved.
//

import UIKit

public class AKBaseNavigationController: UINavigationController {

    public override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    public override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public override var shouldAutorotate: Bool {
        return self.visibleViewController?.shouldAutorotate ?? false
    }
    
    public override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return self.visibleViewController?.supportedInterfaceOrientations ?? UIInterfaceOrientationMask.portrait
    }
    
    public override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation {
        return self.visibleViewController?.preferredInterfaceOrientationForPresentation ?? UIInterfaceOrientation.portrait
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
