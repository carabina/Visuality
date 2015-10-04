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
    
    public func createWindowOfType(windowType: UIWindow.Type, andMakeItKeyAndVisible makeKeyAndVisible: Bool, withConfigurationBlock configurationBlock: ((window: UIWindow) -> Void)?) -> VTNavigationManager {
        // Obtain frame for window
        
        let frameForWindow = UIScreen.mainScreen().bounds
        
        
        // Create window
        
        let window = windowType.init(frame: frameForWindow)
        
        
        // Make window key and visible if needed
        
        if makeKeyAndVisible {
            window.makeKeyAndVisible()
        }
        
        
        // Configure window
        
        configurationBlock?(window: window)
        
        
        // Return result
        
        return self
    }
    
    public func switchToNavigationControllerOfType(navigationControllerType: UINavigationController.Type, withNavigationBarOfType navigationBarType: UINavigationBar.Type, toolbarOfType toolbarType: UIToolbar.Type, andConfigurationBlock configurationBlock: ((navigationController: UINavigationController) -> Void)?) -> VTNavigationManager {
        // Obtain key window
        
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
        // Obtain navigation bar type
        
        let navigationBarType = UINavigationBar.self
        
        
        // Obtain toolbar type
        
        let toolbarType = UIToolbar.self
        
        
        // Switch to navigation controller
        
        switchToNavigationControllerOfType(navigationControllerType, withNavigationBarOfType: navigationBarType, toolbarOfType: toolbarType) { (navigationController) -> Void in
            configurationBlock?(navigationController: navigationController)
        }
        
        
        // Return result
        
        return self
    }
    
    public func addViewToKeyWindow(view: UIView, withConfigurationBlock configurationBlock: ((view: UIView, window: UIWindow?) -> Void)?) -> VTNavigationManager {
        // Obtain key window
        
        let keyWindow = UIApplication.sharedApplication().keyWindow
        
        if keyWindow == nil {
            configurationBlock?(view: view, window: nil)
        }
        else {
            // Add view to window
            
            keyWindow!.addSubview(view)
            
            
            // Configure view
            
            configurationBlock?(view: view, window: keyWindow)
        }
        
        
        // Return result
        
        return self
    }
    
    public func addViewToKeyWindowAnimated(view: UIView, withDuration duration: NSTimeInterval, prepareForAnimationBlock: ((view: UIView, window: UIWindow) -> Void)?, animationBlock: ((view: UIView, window: UIWindow) -> Void)?, andCompletion completion: ((finished: Bool) -> Void)?) -> VTNavigationManager {
        // Obtain key window
        
        let keyWindow = UIApplication.sharedApplication().keyWindow
        
        if keyWindow == nil {
            completion?(finished: false)
        }
        else {
            // Add view to window
            
            keyWindow!.addSubview(view)
            
            
            // Prepare for animation
            
            prepareForAnimationBlock?(view: view, window: keyWindow!)
            
            
            // Start animation
            
            UIView.animateWithDuration(duration, animations: { () -> Void in
                animationBlock?(view: view, window: keyWindow!)
            }, completion: { (finished) -> Void in
                completion?(finished: finished)
            })
        }
        
        
        // Return result
        
        return self
    }
    
    
    // MARK: Private methods
    
    
    // MARK: Protocol methods
    
}
