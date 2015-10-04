//
//  VTTimerExtensionInitialization.swift
//  VisualityDemo
//
//  Created by Igor Matyushkin on 04.10.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import Foundation

public extension VTTimer {
    
    // MARK: Public class methods
    
    public class func every(timeInterval: NSTimeInterval, block: VTTimerBlock) -> VTTimer {
        // Obtain result timer
        
        let resultTimer = VTTimer()
        resultTimer.startWithTimeInterval(timeInterval, repeats: true, block: block)
        
        
        // Return result
        
        return resultTimer
    }
    
    public class func after(timeInterval: NSTimeInterval, block: VTTimerBlock) -> VTTimer {
        // Obtain result timer
        
        let resultTimer = VTTimer()
        resultTimer.startWithTimeInterval(timeInterval, repeats: false, block: block)
        
        
        // Return result
        
        return resultTimer
    }
    
    
    // MARK: Private class methods
    
    
    // MARK: Public object methods
    
    
    // MARK: Private object methods
    
}