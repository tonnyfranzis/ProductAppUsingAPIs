//
//  TNPodNaviViewController.swift
//  TNAppForTraining
//
//  Created by Prasobh Veluthakkal on 19/01/17.
//  Copyright © 2017 Focaloid. All rights reserved.
//

import UIKit
import ENSwiftSideMenu

class TNPodNaviViewController: ENSideMenuNavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        sideMenu = ENSideMenu(sourceView: self.view, menuViewController: TNHomeViewController(), menuPosition: .Left)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
