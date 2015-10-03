//
//  NSObjectExtensionNamespaces.swift
//  Visuality
//
//  Created by Igor Matyushkin on 22.09.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import Foundation

public extension NSObject {
    
    // MARK: Public class methods
    
    public class func VT_classNameWithNamespace() -> String {
        return NSStringFromClass(self)
    }
    
    public class func VT_classNameWithoutNamespace() -> String {
        let classNameWithNamespace = VT_classNameWithNamespace()
        let segments = classNameWithNamespace.componentsSeparatedByString(".")
        let classNameWithoutNamespace = segments.last ?? ""
        return classNameWithoutNamespace
    }
    
    
    // MARK: Private class methods
    
    
    // MARK: Public object methods
    
    
    // MARK: Private object methods
    
}