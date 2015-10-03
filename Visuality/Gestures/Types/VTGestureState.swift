//
//  VTGestureState.swift
//  Visuality
//
//  Created by Igor Matyushkin on 23.09.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public enum VTGestureState {
    case Began
    case Changed
    case Ended
    case Cancelled
    case Unknown
    
    static func allStates() -> [VTGestureState] {
        return [
            .Began,
            .Changed,
            .Ended,
            .Cancelled,
            .Unknown
        ]
    }
    
    static func gestureStateFromGestureRecognizer(gestureRecognizer: UIGestureRecognizer) -> VTGestureState {
        switch gestureRecognizer.state {
        case .Possible:
            return .Unknown
        case .Began:
            return .Began
        case .Changed:
            return .Changed
        case .Ended:
            return .Ended
        case .Failed:
            return .Unknown
        case .Cancelled:
            return .Cancelled
        }
    }
    
    var humanReadableName: String {
        get {
            switch self {
            case .Began:
                return "Began"
            case .Changed:
                return "Changed"
            case .Ended:
                return "Ended"
            case .Cancelled:
                return "Cancelled"
            case .Unknown:
                return "Unknown"
            }
        }
    }
}