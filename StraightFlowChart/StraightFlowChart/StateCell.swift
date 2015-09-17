//
//  StateCell.swift
//  StraightFlowChart
//
//  Created by SB 8 on 9/17/15.
//  Copyright (c) 2015 vn.haibui. All rights reserved.
//

import Foundation

class StateCell : UITableViewCell {
    @IBOutlet weak var stateButton: UIButton!
    
    override func awakeFromNib() {
        
        if let bkgolor = stateButton.backgroundColor {
            
            stateButton.layer.borderColor = bkgolor.CGColor
            stateButton.layer.borderWidth = 2.0
            stateButton.layer.cornerRadius = 5.0
            stateButton.backgroundColor = bkgolor.colorWithAlphaComponent(0.2)
            
        }
        
    }
    
    func consumeState ( state : State ) {
        
        stateButton.setTitle(state.name, forState: .Normal)
        
    }
    
    
    
}