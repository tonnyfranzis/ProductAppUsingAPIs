//
//  TNLoginTableViewController.swift
//  TNAppForTraining
//
//  Created by Prasobh Veluthakkal on 08/12/16.
//  Copyright © 2016 Focaloid. All rights reserved.
//

import UIKit

class TNLoginTableViewController: UITableViewController {
    
    //MARK: - Variables
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var userId: UITextField!
    @IBOutlet weak var password: UITextField!
    
    //MARK: - View Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        let backgroundImage = UIImageView(frame: UIScreen.mainScreen().bounds)
        backgroundImage.image = UIImage(named: "ic_login_bg")
        self.view.insertSubview(backgroundImage, atIndex: 0)

       self.loginButton.layer.borderColor =
        UIColor.whiteColor().CGColor
        self.loginButton.layer.borderWidth = 1
        let paddingForFirst = UIView(frame: CGRectMake(0, 0, 15, self.userId.frame.size.height))
               userId.leftView = paddingForFirst
        userId.leftViewMode = UITextFieldViewMode .Always
              let paddingForSecond = UIView(frame: CGRectMake(0, 0, 15, self.password.frame.height))
        
        password.leftView = paddingForSecond
       password.leftViewMode = UITextFieldViewMode .Always
       
        self.navigationController?.navigationBarHidden = true
             
    }
    

    //MARK: - Actions
    @IBAction func login(sender: AnyObject) {
        login()
    }
    func login() {
        print("Login Success")
    }
    
    // MARK: - TextField Delegates
    func textFieldDidBeginEditing(textField: UITextField) {
        
    }
    func textFieldDidEndEditing(textField: UITextField) {
        
    }
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        if textField == userId {
            password.becomeFirstResponder()
        }else if textField == password {
            textField.resignFirstResponder()
            login()
        }
        
        return true
    }
    //MARK: - System
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    }
