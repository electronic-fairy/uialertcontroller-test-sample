//
//  ViewController.swift
//  AlertControllerPractice
//
//  Created by Itayama on 2016/06/20.
//  Copyright © 2016年 Itayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let alertButton:UIButton = UIButton()
    let alertSheetButton:UIButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Alert
        alertButton.setTitle("Alert", forState: .Normal)
        alertButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        alertButton.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.2)
        alertButton.frame = CGRect(x: 0,y: 0,width: 150,height: 50)
        alertButton.layer.cornerRadius = 10
        alertButton.layer.borderWidth = 1
        alertButton.layer.position = CGPoint(x: self.view.frame.size.width/2, y:self.view.frame.size.height/2)
        alertButton.addTarget(self, action: #selector(self.showAlert), forControlEvents: .TouchUpInside)
        
        self.view.addSubview(alertButton)
        
        //ActionSheet
        alertSheetButton.setTitle("ActionSheet", forState: .Normal)
        alertSheetButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        alertSheetButton.backgroundColor = UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 0.2)
        alertSheetButton.frame = CGRect(x: 0,y: 0,width: 150,height: 50)
        alertSheetButton.layer.cornerRadius = 10
        alertSheetButton.layer.borderWidth = 1
        alertSheetButton.layer.position = CGPoint(x: self.view.frame.size.width/2, y:self.view.frame.size.height/2-100)
        alertSheetButton.addTarget(self, action: #selector(self.showActionSheet), forControlEvents: .TouchUpInside)
        
        self.view.addSubview(alertSheetButton)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    func showAlert(){
        
        let alertCtr = UIAlertController(title: "Alert",
                                         message: "show alert",
                                         preferredStyle: .Alert)
        
        let cancelAction:UIAlertAction = UIAlertAction(title: "Cancel",
                                                       style: UIAlertActionStyle.Cancel,
                                                       handler:{
                                                        (action:UIAlertAction!) -> Void in
                                                        print("Cancel")
        })
        
        let defaultAction:UIAlertAction = UIAlertAction(title: "Default",
                                                        style: UIAlertActionStyle.Default,
                                                        handler:{
                                                            (action:UIAlertAction!) -> Void in
                                                            print("Default")
        })
        
        let destructiveAction:UIAlertAction = UIAlertAction(title: "Destructive",
                                                            style: UIAlertActionStyle.Destructive,
                                                            handler:{
                                                                (action:UIAlertAction!) -> Void in
                                                                print("Destructive")
        })
        
        alertCtr.addAction(cancelAction)
        alertCtr.addAction(defaultAction)
        alertCtr.addAction(destructiveAction)
        
        presentViewController(alertCtr, animated: true, completion: nil)
    }
    
    func showActionSheet(){
        
        let alertCtr = UIAlertController(title: "ActionSheet",
                                         message: "show ActionSheet",
                                         preferredStyle: .ActionSheet)
        
        let cancelAction:UIAlertAction = UIAlertAction(title: "Cancel",
                                                       style: UIAlertActionStyle.Cancel,
                                                       handler:{
                                                        (action:UIAlertAction!) -> Void in
                                                        print("Cancel")
        })
        
        let defaultAction:UIAlertAction = UIAlertAction(title: "Default",
                                                        style: UIAlertActionStyle.Default,
                                                        handler:{
                                                            (action:UIAlertAction!) -> Void in
                                                            print("Default")
        })
        
        let destructiveAction:UIAlertAction = UIAlertAction(title: "Destructive",
                                                            style: UIAlertActionStyle.Destructive,
                                                            handler:{
                                                                (action:UIAlertAction!) -> Void in
                                                                print("Destructive")
        })
        
        alertCtr.addAction(cancelAction)
        alertCtr.addAction(defaultAction)
        alertCtr.addAction(destructiveAction)
        
        presentViewController(alertCtr, animated: true, completion: nil)
    }

}

