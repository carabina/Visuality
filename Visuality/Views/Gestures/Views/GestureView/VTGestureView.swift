//
//  VTGestureView.swift
//  Visuality
//
//  Created by Igor Matyushkin on 23.09.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import UIKit

public class VTGestureView: UIView, UIGestureRecognizerDelegate {
    
    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    public init() {
        super.init(frame: CGRectZero)
        customInitialization()
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        customInitialization()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        customInitialization()
    }
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Outlets
    
    
    // MARK: Variables & properties
    
    private var _tapGestureRecognizer: UITapGestureRecognizer!
    
    private var tapGestureRecognizer: UITapGestureRecognizer {
        get {
            return _tapGestureRecognizer
        }
    }
    
    private var _automaticHandlerForTapGestureEnabled: Bool!
    
    private var automaticHandlerForTapGestureEnabled: Bool {
        get {
            return _automaticHandlerForTapGestureEnabled
        }
        set {
            // Update private variable
            
            _automaticHandlerForTapGestureEnabled = newValue
        }
    }
    
    private var _delayForTapGestureAutomaticHandler: NSTimeInterval!
    
    private var delayForTapGestureAutomaticHandler: NSTimeInterval {
        get {
            return _delayForTapGestureAutomaticHandler
        }
        set {
            // Update private variable
            
            _delayForTapGestureAutomaticHandler = newValue
        }
    }
    
    private var _longPressGestureRecognizer: UILongPressGestureRecognizer!
    
    private var longPressGestureRecognizer: UILongPressGestureRecognizer {
        get {
            return _longPressGestureRecognizer
        }
    }
    
    private var _automaticHandlerForLongPressGestureEnabled: Bool!
    
    private var automaticHandlerForLongPressGestureEnabled: Bool {
        get {
            return _automaticHandlerForLongPressGestureEnabled
        }
        set {
            // Update private variable
            
            _automaticHandlerForLongPressGestureEnabled = newValue
        }
    }
    
    private var _delayForLongPressGestureAutomaticHandler: NSTimeInterval!
    
    private var delayForLongPressGestureAutomaticHandler: NSTimeInterval {
        get {
            return _delayForLongPressGestureAutomaticHandler
        }
        set {
            // Update private variable
            
            _delayForLongPressGestureAutomaticHandler = newValue
        }
    }
    
    private var _panGestureRecognizer: UIPanGestureRecognizer!
    
    private var panGestureRecognizer: UIPanGestureRecognizer {
        get {
            return _panGestureRecognizer
        }
    }
    
    private var _automaticHandlerForPanGestureEnabled: Bool!
    
    private var automaticHandlerForPanGestureEnabled: Bool {
        get {
            return _automaticHandlerForPanGestureEnabled
        }
        set {
            // Update private variable
            
            _automaticHandlerForPanGestureEnabled = newValue
        }
    }
    
    private var _delayForPanGestureAutomaticHandler: NSTimeInterval!
    
    private var delayForPanGestureAutomaticHandler: NSTimeInterval {
        get {
            return _delayForPanGestureAutomaticHandler
        }
        set {
            // Update private variable
            
            _delayForPanGestureAutomaticHandler = newValue
        }
    }
    
    private var _pinchGestureRecognizer: UIPinchGestureRecognizer!
    
    private var pinchGestureRecognizer: UIPinchGestureRecognizer {
        get {
            return _pinchGestureRecognizer
        }
    }
    
    private var _automaticHandlerForPinchGestureEnabled: Bool!
    
    private var automaticHandlerForPinchGestureEnabled: Bool {
        get {
            return _automaticHandlerForPinchGestureEnabled
        }
        set {
            // Update private variable
            
            _automaticHandlerForPinchGestureEnabled = newValue
        }
    }
    
    private var _delayForPinchGestureAutomaticHandler: NSTimeInterval!
    
    private var delayForPinchGestureAutomaticHandler: NSTimeInterval {
        get {
            return _delayForPinchGestureAutomaticHandler
        }
        set {
            // Update private variable
            
            _delayForPinchGestureAutomaticHandler = newValue
        }
    }
    
    private var _rotationGestureRecognizer: UIRotationGestureRecognizer!
    
    private var rotationGestureRecognizer: UIRotationGestureRecognizer {
        get {
            return _rotationGestureRecognizer
        }
    }
    
    private var _automaticHandlerForRotationGestureEnabled: Bool!
    
    private var automaticHandlerForRotationpGestureEnabled: Bool {
        get {
            return _automaticHandlerForRotationGestureEnabled
        }
        set {
            // Update private variable
            
            _automaticHandlerForRotationGestureEnabled = newValue
        }
    }
    
    private var _delayForRotationGestureAutomaticHandler: NSTimeInterval!
    
    private var delayForRotationGestureAutomaticHandler: NSTimeInterval {
        get {
            return _delayForRotationGestureAutomaticHandler
        }
        set {
            // Update private variable
            
            _delayForRotationGestureAutomaticHandler = newValue
        }
    }
    
    private var _swipeGestureRecognizerWithUpDirection: UISwipeGestureRecognizer!
    
    private var swipeGestureRecognizerWithUpDirection: UISwipeGestureRecognizer {
        get {
            return _swipeGestureRecognizerWithUpDirection
        }
    }
    
    private var _swipeGestureRecognizerWithRightDirection: UISwipeGestureRecognizer!
    
    private var swipeGestureRecognizerWithRightDirection: UISwipeGestureRecognizer {
        get {
            return _swipeGestureRecognizerWithRightDirection
        }
    }
    
    private var _swipeGestureRecognizerWithBottomDirection: UISwipeGestureRecognizer!
    
    private var swipeGestureRecognizerWithBottomDirection: UISwipeGestureRecognizer {
        get {
            return _swipeGestureRecognizerWithBottomDirection
        }
    }
    
    private var _swipeGestureRecognizerWithLeftDirection: UISwipeGestureRecognizer!
    
    private var swipeGestureRecognizerWithLeftDirection: UISwipeGestureRecognizer {
        get {
            return _swipeGestureRecognizerWithLeftDirection
        }
    }
    
    private var _automaticHandlerForSwipeGestureEnabled: Bool!
    
    private var automaticHandlerForSwipeGestureEnabled: Bool {
        get {
            return _automaticHandlerForSwipeGestureEnabled
        }
        set {
            // Update private variable
            
            _automaticHandlerForSwipeGestureEnabled = newValue
        }
    }
    
    private var _delayForSwipeGestureAutomaticHandler: NSTimeInterval!
    
    private var delayForSwipeGestureAutomaticHandler: NSTimeInterval {
        get {
            return _delayForSwipeGestureAutomaticHandler
        }
        set {
            // Update private variable
            
            _delayForSwipeGestureAutomaticHandler = newValue
        }
    }
    
    /**
    Object that receives information regarding obtained gesture events via `VTGestureViewDelegate` protocol.
    */
    public var gestureDelegate: VTGestureViewDelegate?
    
    
    // MARK: Public methods
    
    public func setAutomaticGestureHandlerEnabled(enabled: Bool, forGestureType gestureType: VTGestureType) {
        switch gestureType {
        case .Tap:
            _automaticHandlerForTapGestureEnabled = enabled
            break
        case .LongPress:
            _automaticHandlerForLongPressGestureEnabled = enabled
            break
        case .Pan:
            _automaticHandlerForPanGestureEnabled = enabled
            break
        case .Pinch:
            _automaticHandlerForPinchGestureEnabled = enabled
            break
        case .Rotation:
            _automaticHandlerForRotationGestureEnabled = enabled
            break
        case .Swipe:
            _automaticHandlerForSwipeGestureEnabled = enabled
            break
        case .Unknown:
            break
        }
    }
    
    public func isAutomaticGestureHandlerEnabledForGestureType(gestureType: VTGestureType) -> Bool {
        switch gestureType {
        case .Tap:
            return automaticHandlerForTapGestureEnabled
        case .LongPress:
            return automaticHandlerForLongPressGestureEnabled
        case .Pan:
            return automaticHandlerForPanGestureEnabled
        case .Pinch:
            return automaticHandlerForPinchGestureEnabled
        case .Rotation:
            return automaticHandlerForRotationpGestureEnabled
        case .Swipe:
            return automaticHandlerForSwipeGestureEnabled
        case .Unknown:
            return false
        }
    }
    
    public func setDelayForGestureAutomaticHandler(delay: NSTimeInterval, forGestureType gestureType: VTGestureType) {
        switch gestureType {
        case .Tap:
            _delayForTapGestureAutomaticHandler = delay
            break
        case .LongPress:
            _delayForLongPressGestureAutomaticHandler = delay
            break
        case .Pan:
            _delayForPanGestureAutomaticHandler = delay
            break
        case .Pinch:
            _delayForPinchGestureAutomaticHandler = delay
            break
        case .Rotation:
            _delayForRotationGestureAutomaticHandler = delay
            break
        case .Swipe:
            _delayForSwipeGestureAutomaticHandler = delay
            break
        case .Unknown:
            break
        }
    }
    
    public func delayForGestureAutomaticHandlerForGestureType(gestureType: VTGestureType) -> NSTimeInterval {
        switch gestureType {
        case .Tap:
            return delayForTapGestureAutomaticHandler
        case .LongPress:
            return delayForLongPressGestureAutomaticHandler
        case .Pan:
            return delayForPanGestureAutomaticHandler
        case .Pinch:
            return delayForPinchGestureAutomaticHandler
        case .Rotation:
            return delayForRotationGestureAutomaticHandler
        case .Swipe:
            return delayForSwipeGestureAutomaticHandler
        case .Unknown:
            return 0.0
        }
    }
    
    
    // MARK: Private methods
    
    private func customInitialization() {
        // Initialize gesture recognizers
        
        initializeGestureRecognizers()
        
        
        // Disable all automatic gesture handlers by default
        
        disableAllAutomaticGestureHandlers()
        
        
        // Remove delay for all automatic gesture handlers by default
        
        removeDelayForAllAutomaticGestureHandlers()
    }
    
    private func initializeGestureRecognizers() {
        // Obtain selector for gesture recognizers
        
        let selectorForGestureRecognizers = Selector("viewDidRetrieveGestureWithRecognizer:")
        
        
        // Initialize tap gesture recognizer
        
        _tapGestureRecognizer = UITapGestureRecognizer(target: self, action: selectorForGestureRecognizers)
        
        addGestureRecognizer(tapGestureRecognizer)
        
        
        // Initialize long press gesture recognizer
        
        _longPressGestureRecognizer = UILongPressGestureRecognizer(target: self, action: selectorForGestureRecognizers)
        
        addGestureRecognizer(longPressGestureRecognizer)
        
        
        // Initialize pan gesture recognizer
        
        _panGestureRecognizer = UIPanGestureRecognizer(target: self, action: selectorForGestureRecognizers)
        
        addGestureRecognizer(panGestureRecognizer)
        
        
        // Initialize pinch gesture recognizer
        
        _pinchGestureRecognizer = UIPinchGestureRecognizer(target: self, action: selectorForGestureRecognizers)
        
        addGestureRecognizer(pinchGestureRecognizer)
        
        
        // Initialize rotation gesture recognizer
        
        _rotationGestureRecognizer = UIRotationGestureRecognizer(target: self, action: selectorForGestureRecognizers)
        
        addGestureRecognizer(rotationGestureRecognizer)
        
        
        // Initialize swipe gesture recognizer with up direction
        
        _swipeGestureRecognizerWithUpDirection = UISwipeGestureRecognizer(target: self, action: selectorForGestureRecognizers)
        swipeGestureRecognizerWithUpDirection.direction = .Up
        
        addGestureRecognizer(swipeGestureRecognizerWithUpDirection)
        
        
        // Initialize swipe gesture recognizer with right direction
        
        _swipeGestureRecognizerWithRightDirection = UISwipeGestureRecognizer(target: self, action: selectorForGestureRecognizers)
        swipeGestureRecognizerWithRightDirection.direction = .Right
        
        addGestureRecognizer(swipeGestureRecognizerWithRightDirection)
        
        
        // Initialize swipe gesture recognizer with bottom direction
        
        _swipeGestureRecognizerWithBottomDirection = UISwipeGestureRecognizer(target: self, action: selectorForGestureRecognizers)
        swipeGestureRecognizerWithBottomDirection.direction = .Down
        
        addGestureRecognizer(swipeGestureRecognizerWithBottomDirection)
        
        
        // Initialize swipe gesture recognizer with left direction
        
        _swipeGestureRecognizerWithLeftDirection = UISwipeGestureRecognizer(target: self, action: selectorForGestureRecognizers)
        swipeGestureRecognizerWithLeftDirection.direction = .Left
        
        addGestureRecognizer(swipeGestureRecognizerWithLeftDirection)
    }
    
    private func disableAllAutomaticGestureHandlers() {
        for gestureType in VTGestureType.allTypes() {
            setAutomaticGestureHandlerEnabled(false, forGestureType: gestureType)
        }
    }
    
    private func removeDelayForAllAutomaticGestureHandlers() {
        for gestureType in VTGestureType.allTypes() {
            setDelayForGestureAutomaticHandler(0.0, forGestureType: gestureType)
        }
    }
    
    internal func viewDidRetrieveGestureWithRecognizer(gestureRecognizer: UIGestureRecognizer) {
        // Obtain gesture type
        
        let gestureType = VTGestureType.gestureTypeFromGestureRecognizer(gestureRecognizer)
        
        
        // Handle gesture type
        
        switch gestureType {
        case .Tap:
            if automaticHandlerForTapGestureEnabled {
                handleTapGestureWithRecognizer(gestureRecognizer)
            }
            break
        case .LongPress:
            if automaticHandlerForLongPressGestureEnabled {
                handleLongPressGestureWithRecognizer(gestureRecognizer)
            }
            break
        case .Pan:
            if automaticHandlerForPanGestureEnabled {
                handlePanGestureWithRecognizer(gestureRecognizer)
            }
            break
        case .Pinch:
            if automaticHandlerForPinchGestureEnabled {
                handlePinchGestureWithRecognizer(gestureRecognizer)
            }
            break
        case .Rotation:
            if automaticHandlerForRotationpGestureEnabled {
                handleRotationGestureWithRecognizer(gestureRecognizer)
            }
            break
        case .Swipe:
            if automaticHandlerForSwipeGestureEnabled {
                handleSwipeGestureWithRecognizer(gestureRecognizer)
            }
            break
        case .Unknown:
            break
        }
        
        
        // Share event
        
        if gestureDelegate != nil {
            // Obtain gesture state
            
            let gestureState = VTGestureState.gestureStateFromGestureRecognizer(gestureRecognizer)
            
            
            // Obtain touched points
            
            let numberOfTouchedPoints = gestureRecognizer.numberOfTouches()
            var touchedPoints: [CGPoint] = []
            
            for var i = 0; i < numberOfTouchedPoints; i++ {
                let point = gestureRecognizer.locationOfTouch(i, inView: self)
                touchedPoints.append(point)
            }
            
            
            // Send information to delegate
            
            gestureDelegate!.gestureView(self, didRetrieveGestureOfType: gestureType, fromRecognizer: gestureRecognizer, inState: gestureState, withTouchedPoints: touchedPoints)
        }
    }
    
    private func handleTapGestureWithRecognizer(gestureRecognizer: UIGestureRecognizer) {
        // Obtain gesture state
        
        let gestureState = VTGestureState.gestureStateFromGestureRecognizer(gestureRecognizer)
        
        
        // Handle gesture state
        
        switch gestureState {
        case .Began:
            break
        case .Changed:
            break
        case .Ended:
            break
        case .Cancelled:
            break
        case .Unknown:
            break
        }
    }
    
    private func handleLongPressGestureWithRecognizer(gestureRecognizer: UIGestureRecognizer) {
        // Obtain gesture state
        
        let gestureState = VTGestureState.gestureStateFromGestureRecognizer(gestureRecognizer)
        
        
        // Handle gesture state
        
        switch gestureState {
        case .Began:
            break
        case .Changed:
            break
        case .Ended:
            break
        case .Cancelled:
            break
        case .Unknown:
            break
        }
    }
    
    private func handlePanGestureWithRecognizer(gestureRecognizer: UIGestureRecognizer) {
        // Obtain gesture state
        
        let gestureState = VTGestureState.gestureStateFromGestureRecognizer(gestureRecognizer)
        
        
        // Handle gesture state
        
        switch gestureState {
        case .Began:
            let handleGestureState: () -> Void = {
                let panGestureRecognizer = gestureRecognizer as! UIPanGestureRecognizer
                let translatedPoint = panGestureRecognizer.translationInView(self)
                self.center = CGPointMake(self.center.x + translatedPoint.x, self.center.y + translatedPoint.y)
                panGestureRecognizer.setTranslation(CGPointZero, inView: self)
            }
            
            if delayForPanGestureAutomaticHandler > 0.0 {
                UIView.animateWithDuration(delayForPanGestureAutomaticHandler, animations: { () -> Void in
                    handleGestureState()
                })
            }
            else {
                handleGestureState()
            }
            break
        case .Changed:
            let handleGestureState: () -> Void = {
                let panGestureRecognizer = gestureRecognizer as! UIPanGestureRecognizer
                let translatedPoint = panGestureRecognizer.translationInView(self)
                self.center = CGPointMake(self.center.x + translatedPoint.x, self.center.y + translatedPoint.y)
                panGestureRecognizer.setTranslation(CGPointZero, inView: self)
            }
            
            if delayForPanGestureAutomaticHandler > 0.0 {
                UIView.animateWithDuration(delayForPanGestureAutomaticHandler, animations: { () -> Void in
                    handleGestureState()
                })
            }
            else {
                handleGestureState()
            }
            break
        case .Ended:
            let handleGestureState: () -> Void = {
                let panGestureRecognizer = gestureRecognizer as! UIPanGestureRecognizer
                let translatedPoint = panGestureRecognizer.translationInView(self)
                self.center = CGPointMake(self.center.x + translatedPoint.x, self.center.y + translatedPoint.y)
                panGestureRecognizer.setTranslation(CGPointZero, inView: self)
            }
            
            if delayForPanGestureAutomaticHandler > 0.0 {
                UIView.animateWithDuration(delayForPanGestureAutomaticHandler, animations: { () -> Void in
                    handleGestureState()
                })
            }
            else {
                handleGestureState()
            }
            break
        case .Cancelled:
            break
        case .Unknown:
            break
        }
    }
    
    private func handlePinchGestureWithRecognizer(gestureRecognizer: UIGestureRecognizer) {
        // Obtain gesture state
        
        let gestureState = VTGestureState.gestureStateFromGestureRecognizer(gestureRecognizer)
        
        
        // Handle gesture state
        
        switch gestureState {
        case .Began:
            let pinchGestureRecognizer = gestureRecognizer as! UIPinchGestureRecognizer
            let scale = pinchGestureRecognizer.scale
            transform = CGAffineTransformScale(transform, scale, scale)
            pinchGestureRecognizer.scale = 1.0
            break
        case .Changed:
            let pinchGestureRecognizer = gestureRecognizer as! UIPinchGestureRecognizer
            let scale = pinchGestureRecognizer.scale
            transform = CGAffineTransformScale(transform, scale, scale)
            pinchGestureRecognizer.scale = 1.0
            break
        case .Ended:
            break
        case .Cancelled:
            break
        case .Unknown:
            break
        }
    }
    
    private func handleRotationGestureWithRecognizer(gestureRecognizer: UIGestureRecognizer) {
        // Obtain gesture state
        
        let gestureState = VTGestureState.gestureStateFromGestureRecognizer(gestureRecognizer)
        
        
        // Handle gesture state
        
        switch gestureState {
        case .Began:
            break
        case .Changed:
            break
        case .Ended:
            break
        case .Cancelled:
            break
        case .Unknown:
            break
        }
    }
    
    private func handleSwipeGestureWithRecognizer(gestureRecognizer: UIGestureRecognizer) {
        // Obtain gesture state
        
        let gestureState = VTGestureState.gestureStateFromGestureRecognizer(gestureRecognizer)
        
        
        // Handle gesture state
        
        switch gestureState {
        case .Began:
            break
        case .Changed:
            break
        case .Ended:
            break
        case .Cancelled:
            break
        case .Unknown:
            break
        }
    }
    
    
    // MARK: Actions
    
    
    // MARK: Protocol methods
    
    public func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
    
}
