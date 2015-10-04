//
//  VTTimer.swift
//  VisualityDemo
//
//  Created by Igor Matyushkin on 04.10.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import UIKit

public class VTTimer: NSObject {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Variables & properties
    
    private var _internalTimer: NSTimer?
    
    private var internalTimer: NSTimer? {
        get {
            return _internalTimer
        }
    }
    
    private var _timerBlock: VTTimerBlock?
    
    private var timerBlock: VTTimerBlock? {
        get {
            return _timerBlock
        }
    }
    
    
    // MARK: Public methods
    
    public func startWithTimeInterval(timeInterval: NSTimeInterval, repeats: Bool, block: VTTimerBlock) {
        // Stop internal timer if needed
        
        stop()
        
        
        // Initialize timer block
        
        _timerBlock = block
        
        
        // Initialize internal timer
        
        _internalTimer = NSTimer.scheduledTimerWithTimeInterval(timeInterval, target: self, selector: "internalTimerMethod", userInfo: nil, repeats: repeats)
    }
    
    public func stop() {
        // Stop and remove internal timer
        
        internalTimer?.invalidate()
        _internalTimer = nil
        
        
        // Remove timer block
        
        _timerBlock = nil
    }
    
    
    // MARK: Private methods
    
    internal func internalTimerMethod() {
        timerBlock?()
    }
    
    
    // MARK: Protocol methods
    
}
