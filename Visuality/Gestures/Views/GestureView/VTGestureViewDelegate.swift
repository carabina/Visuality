//
//  VTGestureViewDelegate.swift
//  VisualityDemo
//
//  Created by Igor Matyushkin on 23.09.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public protocol VTGestureViewDelegate {
    
    /**
    This method is called when gesture view obtains gesture event.
    
    - Parameters:
        - view: Gesture view.
    
        - gestureType: Type of obtained gesture.
    
        - gestureRecognizer: Gesture recognizer which obtained gesture event.
    
        - gestureState: State of obtained gesture.
    
        - touchedPoints: Points that were touched by obtained gesture.
    */
    func gestureView(view: VTGestureView, didRetrieveGestureOfType gestureType: VTGestureType, fromRecognizer gestureRecognizer: UIGestureRecognizer, inState gestureState: VTGestureState, withTouchedPoints touchedPoints: [CGPoint])
    
}