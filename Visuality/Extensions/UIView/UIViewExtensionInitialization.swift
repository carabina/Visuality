//
//  UIViewExtensionInitialization.swift
//  VisualityDemo
//
//  Created by Igor Matyushkin on 21.09.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import Foundation
import UIKit

public extension UIView {
    
    // MARK: Public class methods
    
    /**
    Loads view from nib with specified name which is located in specified bundle.
    
    - Parameters:
        - nibName: Name of nib file to load view from.
    
        - bundle: Bundle which contains specified nib file. If nil, main bundle will be used.
    
    - returns: View from nib with specified name which is located in specified bundle.
    */
    public class func VT_viewFromNibWithName(nibName: String, locatedInBundle bundle: NSBundle?) -> UIView {
        // Retrieve bundle which is appropriate for usage
        
        let bundleToUse = bundle == nil ? NSBundle.mainBundle() : bundle as NSBundle!
        
        
        // Check whether nib exists in specified bundle
        
        let nibExists = bundleToUse.VT_containsNibWithName(nibName)
        
        
        // Retrieve result view
        
        var resultView: UIView? = nil
        
        if nibExists {
            resultView = bundleToUse.VT_loadViewWithClass(self, fromNibWithName: nibName)
        }
        
        if resultView == nil {
            resultView = self.init()
        }
        
        
        // Return result
        
        return resultView!;
    }
    
    /**
    Loads view from nib with specified name which is located in bundle with specified identifier.
    
    - Parameters:
        - nibName: Name of nib file to load view from.
        
        - bundleIdentifier: Identifier of bundle which contains specified nib file. If nil, main bundle will be used.
    
    - returns: View from nib with specified name which is located in bundle with specified identifier.
    */
    public class func VT_viewFromNibWithName(nibName: String, locatedInBundleWithIdentifier bundleIdentifier: String?) -> UIView {
        // Retrieve bundle which is appropriate for usage
        
        let bundleToUse = bundleIdentifier == nil ? NSBundle.mainBundle() : NSBundle(identifier: bundleIdentifier!)
        
        
        // Retrieve result view
        
        let resultView = VT_viewFromNibWithName(nibName, locatedInBundle: bundleToUse)
        
        
        // Return result
        
        return resultView;
    }
    
    /**
    Loads view from nib with specified name which is located in main bundle.
    
    - Parameters:
        - nibName: Name of nib file to load view from.
    
    - returns: View from nib with specified name which is located in main bundle.
    */
    public class func VT_viewFromNibLocatedInMainBundleWithNibName(nibName: String) -> UIView {
        // Retrieve bundle
        
        let bundleToUse = NSBundle.mainBundle()
        
        
        // Retrieve result view
        
        let resultView = VT_viewFromNibWithName(nibName, locatedInBundle: bundleToUse)
        
        
        // Return result
        
        return resultView;
    }
    
    /**
    Loads view from nib which name is equal to view's class name and which is located in specified bundle.
    
    - Parameters:
        - bundle: Bundle which contains specified nib file. If nil, main bundle will be used.
    
    - returns: View from nib which name is equal to view's class name and which is located in specified bundle.
    */
    public class func VT_viewFromNibWithClassNameLocatedInBundle(bundle: NSBundle?) -> UIView {
        // Retrieve nib name
        
        let nibName = VT_classNameWithoutNamespace()
        
        
        // Retrieve result view
        
        let resultView = VT_viewFromNibWithName(nibName, locatedInBundle: bundle)
        
        
        // Return result
        
        return resultView;
    }
    
    /**
    Loads view from nib which name is equal to view's class name and which is located in bundle with specified identifier.
    
    - Parameters:
        - bundleIdentifier: Identifier of bundle which contains specified nib file. If nil, main bundle will be used.
    
    - returns: View from nib which name is equal to view's class name and which is located in bundle with specified identifier.
    */
    public class func VT_viewFromNibWithClassNameLocatedInBundleWithIdentifier(bundleIdentifier: String?) -> UIView {
        // Retrieve nib name
        
        let nibName = VT_classNameWithoutNamespace()
        
        
        // Retrieve bundle which is appropriate for usage
        
        let bundleToUse = bundleIdentifier == nil ? NSBundle.mainBundle() : NSBundle(identifier: bundleIdentifier!)
        
        
        // Retrieve result view
        
        let resultView = VT_viewFromNibWithName(nibName, locatedInBundle: bundleToUse)
        
        
        // Return result
        
        return resultView;
    }
    
    /**
    Loads view from nib which name is equal to view's class name and which is located in main bundle.
    
    - returns: View from nib which name is equal to view's class name and which is located in main bundle.
    */
    public class func VT_viewFromNibWithClassNameLocatedInMainBundle() -> UIView {
        // Retrieve nib name
        
        let nibName = VT_classNameWithoutNamespace()
        
        
        // Retrieve bundle
        
        let bundleToUse = NSBundle.mainBundle()
        
        
        // Retrieve result view
        
        let resultView = VT_viewFromNibWithName(nibName, locatedInBundle: bundleToUse)
        
        
        // Return result
        
        return resultView;
    }
    
    
    // MARK: Private class methods
    
    
    // MARK: Public object methods
    
    
    // MARK: Private object methods
    
}