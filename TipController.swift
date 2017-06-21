//
//  TipController.swift
//  SplitCheck
//
//  Created by Luis Puentes on 6/20/17.
//  Copyright © 2017 LuisPuentes. All rights reserved.
//

import Foundation

class TipController {
    
    func tipTotal(totalAmount: Double, percentage: Double) -> Double {
        var tipGrandTotal: Double = 0
        
        tipGrandTotal = (percentage/100)*totalAmount
        
        return tipGrandTotal
    }
    
    func splitEvenly(tipTotal: Double, partySize: Double) -> Double {
        var tipAmount: Double = 0
        
        tipAmount = tipTotal / partySize
        
        return tipAmount
    }
}
