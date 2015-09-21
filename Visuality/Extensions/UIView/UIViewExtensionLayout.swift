//
//  UIViewExtensionLayout.swift
//  VisualityDemo
//
//  Created by Igor Matyushkin on 22.09.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    
    // MARK: Public class methods
    
    
    // MARK: Private class methods
    
    
    // MARK: Public object methods
    
    /**
    Changes recipient's frame to fit bounds of specified view.
    Then adds recipient to specified view as subview.
    
    - Parameters:
        - view: View that should be a superview for recipient.
    */
    public func VT_fillView(view: UIView) {
        frame = view.bounds
        view.addSubview(self)
    }
    
    /**
    Changes recipient's frame to fit superview's bounds.
    */
    public func VT_fillSuperview() {
        if superview != nil {
            frame = superview!.bounds
        }
    }
    
    
    // MARK: Private object methods
    
}