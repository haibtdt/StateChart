//
//  ViewController.swift
//  ExampleApp
//
//  Created by SB 8 on 9/17/15.
//  Copyright (c) 2015 vn.haibui. All rights reserved.
//

import UIKit
import StraightFlowChart

class ViewController: UIViewController {

    let builtinFlowChartVC = HBStraightFlowChartController.createBuiltinFlowChartController()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        builtinFlowChartVC.states = [
            
            State(stateName: "Beginning", statePostion: .Beginning, status: .Activated),
            State(stateName: "Waiting for review", statePostion: .Middle, status: .Activated),
            State(stateName: "In Review", statePostion: .Middle, status: .Waiting),
            State(stateName: "Approved", statePostion: .Middle, status: .Waiting),
            State(stateName: "Go for sale", statePostion: .Final, status: .Waiting),
            
        ]
        
        
    }
    
    
    override func viewDidAppear(animated: Bool) {
        
        presentViewController(builtinFlowChartVC, animated: true) { () -> Void in
        
            
            
            
            
        }
        
        
    }


    
}

