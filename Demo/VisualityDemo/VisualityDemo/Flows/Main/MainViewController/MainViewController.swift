//
//  MainViewController.swift
//  VisualityDemo
//
//  Created by Igor Matyushkin on 21.09.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    
    // MARK: Initializers
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Outlets
    
    @IBOutlet private weak var containerForCircleView: UIView!
    
    
    // MARK: Variables & properties
    
    private var circleView: CircleView!
    
    private var counter: Int!
    
    
    // MARK: Public methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Initialize container for circle view
        
        containerForCircleView.backgroundColor = .clearColor()
        
        
        // Initialize circle view
        
        circleView = CircleView.VT_viewFromNibWithClassNameLocatedInMainBundle() as! CircleView
        
        circleView.setAutomaticGestureHandlerEnabled(true, forGestureType: .Pan)
        circleView.setDelayForGestureAutomaticHandler(0.0, forGestureType: .Pan)
        
        circleView.setAutomaticGestureHandlerEnabled(true, forGestureType: .Pinch)
        circleView.setDelayForGestureAutomaticHandler(0.3, forGestureType: .Pinch)
        
        circleView.setAutomaticGestureHandlerEnabled(true, forGestureType: .Rotation)
        circleView.setDelayForGestureAutomaticHandler(0.0, forGestureType: .Rotation)
        
        circleView.VT_fillView(containerForCircleView)
        
        
        // Initialize counter
        
        counter = 0
        
        
        // Start timer
        
        VTTimer.every(1.0) { () -> Void in
            self.counter!++
            self.navigationItem.title = String(format: "Timer: %d", arguments: [self.counter])
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        
        
        // Update circle view
        
        circleView.VT_fillView(containerForCircleView)
        circleView.updateUI()
    }
    
    
    // MARK: Private methods
    
    
    // MARK: Actions
    
    
    // MARK: Protocol methods
    
}
