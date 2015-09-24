//
//  VTNavigationManager.swift
//  Visuality
//
//  Created by Igor Matyushkin on 24.09.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import UIKit

public class VTNavigationManager: NSObject {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    public class func sharedNavigationManager() -> VTNavigationManager {
        struct Singleton {
            static var navigationManager = VTNavigationManager()
        }
        
        return Singleton.navigationManager
    }
    
    
    // MARK: Initializers
    
    public override init() {
        super.init()
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Variables & properties
    
    
    // MARK: Public methods
    
    public func createWindowOfType(windowType: UIWindow.Type, withConfigurationBlock configurationBlock: ((window: UIWindow) -> Void)?) -> VTNavigationManager {
        // Retrieve frame for window
        
        let frameForWindow = UIScreen.mainScreen().bounds
        
        
        // Create window
        
        let window = windowType.init(frame: frameForWindow)
        
        
        // Configure window
        
        configurationBlock?(window: window)
        
        
        // Return result
        
        return self
    }
    
    public func switchToNavigationControllerOfType(navigationControllerType: UINavigationController.Type, withNavigationBarOfType navigationBarType: UINavigationBar.Type, toolbarOfType toolbarType: UIToolbar.Type, andConfigurationBlock configurationBlock: ((navigationController: UINavigationController) -> Void)?) -> VTNavigationManager {
        // Retrieve key window
        
        let keyWindow = UIApplication.sharedApplication().keyWindow
        
        
        // Create navigation controller
        
        let navigationController = navigationControllerType.init(navigationBarClass: navigationBarType, toolbarClass: toolbarType)
        
        
        // Configure navigation controller
        
        configurationBlock?(navigationController: navigationController)
        
        
        // Switch to navigation controller
        
        keyWindow?.rootViewController = navigationController
        
        
        // Return result
        
        return self
    }
    
    public func switchToNavigationControllerOfType(navigationControllerType: UINavigationController.Type, withConfigurationBlock configurationBlock: ((navigationController: UINavigationController) -> Void)?) -> VTNavigationManager {
        // Retrieve navigation bar type
        
        let navigationBarType = UINavigationBar.self
        
        
        // Retrieve toolbar type
        
        let toolbarType = UIToolbar.self
        
        
        // Switch to navigation controller
        
        switchToNavigationControllerOfType(navigationControllerType, withNavigationBarOfType: navigationBarType, toolbarOfType: toolbarType) { (navigationController) -> Void in
            configurationBlock?(navigationController: navigationController)
        }
        
        
        // Return result
        
        return self
    }
    
    
    // MARK: Private methods
    
    
    // MARK: Protocol methods
    
}
