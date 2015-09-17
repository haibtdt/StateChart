//
//  HBStraightFlowChartController.swift
//  
//
//  Created by SB 8 on 9/17/15.
//
//

import UIKit

public class HBStraightFlowChartController: UITableViewController {

    public var states = [State]()
    
    public class func createBuiltinFlowChartController () -> HBStraightFlowChartController {
    
        let builtStoryBoard = UIStoryboard(name: "Storyboard", bundle: NSBundle(forClass: HBStraightFlowChartController.classForCoder()))
        let vcToReturn = builtStoryBoard.instantiateViewControllerWithIdentifier("vn.haibui.DefaultStraightFlowViewController") as! HBStraightFlowChartController
        
        return vcToReturn
        
    }
    
    
//    MARK: TableView Data Source
    public override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return states.count
        
    }
    

    let decisionTree = [
        StateStatus.Waiting : [
            StatePostion.Beginning : "",
            StatePostion.Middle : "vn.haibui.InMiddleInactiveStateCell",
            StatePostion.Final : "vn.haibui.FinalInactiveStateCell",
        ],
        StateStatus.Activated : [
            StatePostion.Beginning : "vn.haibui.BeginningActiveStateCell",
            StatePostion.Middle : "vn.haibui.InMiddleActiveStateCell",
            StatePostion.Final : "vn.haibui.FinalActiveStateCell",
        ]
    ]
    public override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let state = states[indexPath.row]
        let cellID = decisionTree[state.status]![state.postion]!
        
        let cell = tableView.dequeueReusableCellWithIdentifier(cellID) as! StateCell
        cell.consumeState(state)
        
        return cell
        
    }

    
}
