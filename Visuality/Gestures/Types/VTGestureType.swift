//
//  VTGestureType.swift
//  VisualityDemo
//
//  Created by Igor Matyushkin on 23.09.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public enum VTGestureType {
    case Tap
    case LongPress
    case Pan
    case Pinch
    case Rotation
    case Swipe
    case Unknown
    
    static func allTypes() -> [VTGestureType] {
        return [
            .Tap,
            .LongPress,
            .Pan,
            .Pinch,
            .Rotation,
            .Swipe,
            .Unknown
        ]
    }
    
    static func gestureTypeFromGestureRecognizer(gestureRecognizer: UIGestureRecognizer) -> VTGestureType {
        if gestureRecognizer is UITapGestureRecognizer {
            return .Tap
        }
        else if gestureRecognizer is UILongPressGestureRecognizer {
            return .LongPress
        }
        else if gestureRecognizer is UIPanGestureRecognizer {
            return .Pan
        }
        else if gestureRecognizer is UIPinchGestureRecognizer {
            return .Pinch
        }
        else if gestureRecognizer is UIRotationGestureRecognizer {
            return .Rotation
        }
        else if gestureRecognizer is UISwipeGestureRecognizer {
            return .Swipe
        }
        else {
            return .Unknown
        }
    }
    
    var humanReadableName: String {
        get {
            switch self {
            case .Tap:
                return "Tap"
            case .LongPress:
                return "Long press"
            case .Pan:
                return "Pan"
            case .Pinch:
                return "Pinch"
            case .Rotation:
                return "Rotation"
            case .Swipe:
                return "Swipe"
            case .Unknown:
                return "Unknown"
            }
        }
    }
}