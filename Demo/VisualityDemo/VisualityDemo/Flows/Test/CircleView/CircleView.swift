//
//  CircleView.swift
//  VisualityDemo
//
//  Created by Igor Matyushkin on 22.09.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import UIKit

class CircleView: VTGestureView {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Outlets
    
    
    // MARK: Variables & properties
    
    
    // MARK: Public methods
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        // Update UI
        
        updateUI()
    }
    
    func updateUI() {
        layer.cornerRadius = frame.size.width / 2.0
        layer.borderColor = UIColor.blackColor().CGColor
        layer.borderWidth = 2.0
        
        layer.backgroundColor = UIColor.Visuality_PurpleColor.CGColor
    }
    
    
    // MARK: Private methods
    
    
    // MARK: Actions
    
    
    // MARK: Protocol methods
    
}
