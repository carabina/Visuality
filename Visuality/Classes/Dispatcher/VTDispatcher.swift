//
//  VTDispatcher.swift
//  VisualityDemo
//
//  Created by Igor Matyushkin on 24.09.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import UIKit

public class VTDispatcher: NSObject {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    public class func dispatchOnQueue(queue: dispatch_queue_t, afterTimeInterval timeInterval: NSTimeInterval, withBlock block: () -> Void) {
        // Retrieve delay time
        
        let delayTime = dispatch_time(DISPATCH_TIME_NOW, Int64(timeInterval * Double(NSEC_PER_SEC)))
        
        
        // Start dispatch
        
        dispatch_after(delayTime, queue) { () -> Void in
            block()
        }
    }
    
    public class func dispatchOnMainQueueAfterTimeInterval(timeInterval: NSTimeInterval, withBlock block: () -> Void) {
        // Retrieve queue
        
        let queue = dispatch_get_main_queue()
        
        
        // Start dispatch
        
        dispatchOnQueue(queue, afterTimeInterval: timeInterval) { () -> Void in
            block()
        }
    }
    
    
    // MARK: Initializers
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Variables & properties
    
    
    // MARK: Public methods
    
    
    // MARK: Private methods
    
    
    // MARK: Protocol methods
    
}
