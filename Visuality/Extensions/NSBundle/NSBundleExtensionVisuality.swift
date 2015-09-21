//
//  NSBundleExtensionVisuality.swift
//  VisualityDemo
//
//  Created by Igor Matyushkin on 21.09.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public extension NSBundle {
    
    // MARK: Public class methods
    
    
    // MARK: Private class methods
    
    
    // MARK: Public object methods
    
    /**
    Checks whether nib with specified name exists in bundle.
    
    - Parameters:
        - nibName: Name of nib file.
    
    - returns: True if nib exists. Otherwise, returns false.
    */
    public func VT_containsNibWithName(nibName: String) -> Bool {
        // Retrieve path for nib
        
        let pathForNib = pathForResource(nibName, ofType: "nib")
        
        
        // Check for existance of nib
        
        var nibExists = false
        
        if pathForNib != nil {
            let fileManager = NSFileManager.defaultManager()
            nibExists = fileManager.fileExistsAtPath(pathForNib!)
        }
        
        
        // Return result
        
        return nibExists
    }
    
    /**
    Loads view with specified class from nib with specified name.
    
    - Parameters:
        - viewClass: Class of view to load from nib.
    
        - nibName: Name of nib file to load view from.
    
    - returns: View with specified class loaded from nib with specified name.
    */
    public func VT_loadViewWithClass(viewClass: UIView.Type, fromNibWithName nibName: String) -> UIView? {
        // Check for existance of nib
        
        let nibExists = VT_containsNibWithName(nibName)
        
        if (!nibExists) {
            return nil
        }
        
        
        // Retrieve result view
        
        let topLevelObjectsFromNib = loadNibNamed(nibName, owner: nil, options: nil)
        
        let filteredTopLevelObjectsFromNib = topLevelObjectsFromNib.filter { (evaluatedObject) -> Bool in
            let requiredClassName = viewClass.VT_classNameWithNamespace()
            let evaluatedObjectClassName = evaluatedObject.classForCoder.VT_classNameWithNamespace()
            let classNameOfEvaluatedObjectIsEqualToRequiredClassName = evaluatedObjectClassName == requiredClassName
            return classNameOfEvaluatedObjectIsEqualToRequiredClassName
        }
        
        let resultView: UIView? = filteredTopLevelObjectsFromNib.first as? UIView
        
        
        // Return result view
        
        return resultView;
    }
    
    
    // MARK: Private object methods
    
}