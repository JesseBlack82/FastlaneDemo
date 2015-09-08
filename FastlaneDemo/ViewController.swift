//
//  ViewController.swift
//  FastlaneDemo
//
//  Created by Jesse Black on 9/7/15.
//  Copyright (c) 2015 Jesse Black. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var brand: String {
        get {
        var b = ""
        
        #if JB
        b = "Jesse Black"
        #endif
        
        #if JSB
        b = "JSB"
        #endif
        
        return b
        }
    }
    
    var backend: String {
        get {
            var b = ""
            #if QA
                b = "QA"
            #endif
            
            #if PROD
                b = "PROD"
            #endif
            
            return b
        }
    }
    
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        helloLabel.text = "Hello \(backend) from \(brand)"

        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

