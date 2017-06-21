//
//  MainCheckController.swift
//  SplitCheck
//
//  Created by Luis Puentes on 6/20/17.
//  Copyright © 2017 LuisPuentes. All rights reserved.
//

import Foundation

class MainCheckController {
    
    func totalCost(partySize: Double, totalAmount: Double) -> Double {
        var splitCost: Double
        splitCost = totalAmount / partySize
        return round(splitCost * 100) / 100
    }
}
