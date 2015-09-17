//
//  State.swift
//  StraightFlowChart
//
//  Created by SB 8 on 9/17/15.
//  Copyright (c) 2015 vn.haibui. All rights reserved.
//

import Foundation

public enum StatePostion {
    
    case Beginning
    case Middle
    case Final
    
}

public enum StateStatus {
    
    case Activated
    case Waiting
    
}

public class State {
    
    public var name = String()
    public var postion = StatePostion.Middle
    public var status = StateStatus.Waiting
    
    public init (stateName name : String,
        statePostion postion : StatePostion,
        status : StateStatus) {
        
        self.name = name
        self.postion = postion
        self.status = status
        
    }
    
    
}