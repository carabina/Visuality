//
//  FullScreenView.swift
//  VisualityDemo
//
//  Created by Igor Matyushkin on 24.09.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import UIKit

class FullScreenView: UIView {
    
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
        
        
        // Add tap gesture recognizer to view
        
        let tapGestureRecognizerForView = UITapGestureRecognizer(target: self, action: "viewDidTapWithGestureRecognizer:")
        addGestureRecognizer(tapGestureRecognizerForView)
    }
    
    
    // MARK: Private methods
    
    internal func viewDidTapWithGestureRecognizer(gestureRecognizer: UIGestureRecognizer) {
        UIView.animateWithDuration(0.3, animations: { () -> Void in
            var frameForView = UIApplication.sharedApplication().keyWindow!.bounds
            frameForView.origin.y = frameForView.size.height
            self.frame = frameForView
        }) { (finished) -> Void in
            self.removeFromSuperview()
        }
    }
    
    
    // MARK: Actions
    
    
    // MARK: Protocol methods
    
}
