//
//  TNHomeViewController.swift
//  TNAppForTraining
//
//  Created by Prasobh Veluthakkal on 10/01/17.
//  Copyright © 2017 Focaloid. All rights reserved.
//

import UIKit
import ENSwiftSideMenu

class TNHomeViewController: UIViewController,ENSideMenuDelegate {
    var sideMenu : ENSideMenu?
        
    @IBOutlet weak var changeButton1: UIButton!
    
    
    @IBOutlet weak var productsContainerView: UIView!
    

    var currentCollectionViewController: UIViewController?
    override func viewDidLoad() {
        super.viewDidLoad()

//        self.currentCollectionViewController = self.childViewControllers.first
//       let imagefirst = UIImage(named: "ic_Button")
//       changeButton1.setImage(imagefirst, forState: .Normal)
//    changeButton1.addTarget(self, action:"buttonpressed:", forControlEvents: .TouchUpInside)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func changeButton(sender: UIButton) {
    
        sender.selected = !sender.selected
            if !sender.selected
        {
        let newViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ID")
        
        newViewController!.view.translatesAutoresizingMaskIntoConstraints = false
        
        
        self.cycleFromViewController(self.currentCollectionViewController!, toViewController: newViewController!)
        
        
        self.currentCollectionViewController = newViewController
            
        
                    }
        else
        {
            let newViewController = self.storyboard?.instantiateViewControllerWithIdentifier("productsGridCVC")
            
            newViewController!.view.translatesAutoresizingMaskIntoConstraints = false
            
            
            self.cycleFromViewController(self.currentCollectionViewController!, toViewController: newViewController!)
            
            
            self.currentCollectionViewController = newViewController
            
        
        }

        
    }
    
    func cycleFromViewController(oldViewController: UIViewController, toViewController newViewController: UIViewController) {
        
        oldViewController.willMoveToParentViewController(nil)
        
        self.addChildViewController(newViewController)
        
        addSubview(newViewController.view, toView: self.view)
        newViewController.view.alpha = 0
        newViewController.view.layoutIfNeeded()
        
        
               UIView.animateWithDuration(0.5, animations: {
            newViewController.view.alpha = 1
                oldViewController.view.alpha = 0
                
                
                
            },
                                   
                                   completion: { finished in
                                    
                                    oldViewController.view.removeFromSuperview()
                                    
                                    oldViewController.removeFromParentViewController()
                                    
                                    newViewController.didMoveToParentViewController(self)
                                    
        })
        
    }
    
    
    
    func addSubview(subView:UIView, toView parentView:UIView) {
        
        parentView.addSubview(subView)
        
        
        
        subView.frame = productsContainerView.frame
    }
    func buttonpressed(sender:UIButton)
    {
        let secondImage = UIImage(named: "ic_button2")
        changeButton1.setImage(secondImage, forState:.Selected)
        
    }
}

    

    



