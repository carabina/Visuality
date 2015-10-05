//
//  UIColorExtensionInitialization.swift
//  VisualityDemo
//
//  Created by Igor Matyushkin on 05.10.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public extension UIColor {
    
    // MARK: Public class methods
    
    
    // MARK: Private class methods
    
    
    // MARK: Initializers
    
    public convenience init?(hexString: String, alpha: CGFloat) {
        // Obtain mutable hex string
        
        var colorHexCode = hexString
        
        
        // Remove hash if needed
        
        if colorHexCode.hasPrefix("#") {
            colorHexCode = colorHexCode.substringFromIndex(colorHexCode.startIndex.advancedBy(1))
        }
        
        
        // Obtain range of regular expression
        
        let range = colorHexCode.rangeOfString("(^[0-9A-Fa-f]{6}$)|(^[0-9A-Fa-f]{3}$)", options: .RegularExpressionSearch)
        
        if range == nil {
            self.init()
            return nil
        }
        else {
            if colorHexCode.characters.count == 3 {
                let hexCodeForRedComponent = colorHexCode.substringToIndex(colorHexCode.startIndex.advancedBy(1))
                
                let rangeForGreenComponent = Range<String.Index>(start: colorHexCode.startIndex.advancedBy(1), end: colorHexCode.startIndex.advancedBy(2))
                let hexCodeForGreenComponent = colorHexCode.substringWithRange(rangeForGreenComponent)
                
                let hexCodeForBlueComponent = colorHexCode.substringFromIndex(colorHexCode.startIndex.advancedBy(2))
                
                colorHexCode = hexCodeForRedComponent + hexCodeForRedComponent + hexCodeForGreenComponent + hexCodeForGreenComponent + hexCodeForBlueComponent + hexCodeForBlueComponent
            }
            
            let hexCodeForRedComponent = colorHexCode.substringToIndex(colorHexCode.startIndex.advancedBy(2))
            
            let rangeForGreenComponent = Range<String.Index>(start: colorHexCode.startIndex.advancedBy(2), end: colorHexCode.startIndex.advancedBy(4))
            let hexCodeForGreenComponent = colorHexCode.substringWithRange(rangeForGreenComponent)
            
            let rangeForBlueComponent = Range<String.Index>(start: colorHexCode.startIndex.advancedBy(4), end: colorHexCode.startIndex.advancedBy(6))
            let hexCodeForBlueComponent = colorHexCode.substringWithRange(rangeForBlueComponent)
            
            var intValueForRedComponent:   CUnsignedInt = 0
            var intValueForGreenComponent: CUnsignedInt = 0
            var intValueForBlueComponent:  CUnsignedInt = 0
            
            NSScanner(string: hexCodeForRedComponent).scanHexInt(&intValueForRedComponent)
            NSScanner(string: hexCodeForGreenComponent).scanHexInt(&intValueForGreenComponent)
            NSScanner(string: hexCodeForBlueComponent).scanHexInt(&intValueForBlueComponent)
            
            let CGFloatValueForRedComponent = CGFloat(intValueForBlueComponent) / 255.0
            let CGFloatValueForGreenComponent = CGFloat(intValueForGreenComponent) / 255.0
            let CGFloatValueForBlueComponent = CGFloat(intValueForBlueComponent) / 255.0
            
            self.init(red: CGFloatValueForRedComponent, green: CGFloatValueForGreenComponent, blue: CGFloatValueForBlueComponent, alpha: alpha)
        }
    }
    
    public convenience init?(hexString: String) {
        let alpha: CGFloat = 1.0
        self.init(hexString: hexString, alpha: alpha)
    }
    
    public convenience init?(hex: Int, alpha: CGFloat) {
        let hexString = String(format: "%2X", arguments: [hex])
        self.init(hexString: hexString, alpha: alpha)
    }
    
    public convenience init?(hex: Int) {
        let alpha: CGFloat = 1.0
        self.init(hex: hex, alpha: alpha)
    }
    
    public convenience init(intRed: Int, intGreen: Int, intBlue: Int, intAlpha: Int) {
        // Obtain minimum int value for component
        
        let minimumIntValueForComponent = 0
        
        
        // Obtain maximum int value for component
        
        let maximumIntValueForComponent = 255
        
        
        // Obtain int value for red component
        
        var intValueForRedComponent = intRed
        
        if intValueForRedComponent < minimumIntValueForComponent {
            intValueForRedComponent = minimumIntValueForComponent
        }
        else if intValueForRedComponent > maximumIntValueForComponent {
            intValueForRedComponent = maximumIntValueForComponent
        }
        
        
        // Obtain CGFloat value for red component
        
        let CGFloatValueForRedComponent = CGFloat(intValueForRedComponent) / 255.0
        
        
        // Obtain int value for green component
        
        var intValueForGreenComponent = intGreen
        
        if intValueForGreenComponent < minimumIntValueForComponent {
            intValueForGreenComponent = minimumIntValueForComponent
        }
        else if intValueForGreenComponent > maximumIntValueForComponent {
            intValueForGreenComponent = maximumIntValueForComponent
        }
        
        
        // Obtain CGFloat value for green component
        
        let CGFloatValueForGreenComponent = CGFloat(intValueForGreenComponent) / 255.0
        
        
        // Obtain int value for blue component
        
        var intValueForBlueComponent = intBlue
        
        if intValueForBlueComponent < minimumIntValueForComponent {
            intValueForBlueComponent = minimumIntValueForComponent
        }
        else if intValueForBlueComponent > maximumIntValueForComponent {
            intValueForBlueComponent = maximumIntValueForComponent
        }
        
        
        // Obtain CGFloat value for blue component
        
        let CGFloatValueForBlueComponent = CGFloat(intValueForBlueComponent) / 255.0
        
        
        // Obtain int value for alpha component
        
        var intValueForAlphaComponent = intAlpha
        
        if intValueForAlphaComponent < minimumIntValueForComponent {
            intValueForAlphaComponent = minimumIntValueForComponent
        }
        else if intValueForAlphaComponent > maximumIntValueForComponent {
            intValueForAlphaComponent = maximumIntValueForComponent
        }
        
        
        // Obtain CGFloat value for alpha component
        
        let CGFloatValueForAlphaComponent = CGFloat(intValueForAlphaComponent) / 255.0
        
        
        // Obtain result color
        
        self.init(red: CGFloatValueForRedComponent, green: CGFloatValueForGreenComponent, blue: CGFloatValueForBlueComponent, alpha: CGFloatValueForAlphaComponent)
    }
    
    
    // MARK: Public object methods
    
    
    // MARK: Private object methods
    
}