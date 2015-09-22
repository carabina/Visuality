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
    
    
    // MARK: Public methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Initialize container for circle view
        
        containerForCircleView.backgroundColor = .clearColor()
        
        
        // Initialize circle view
        
        circleView = CircleView.VT_viewFromNibWithClassNameLocatedInMainBundle() as! CircleView
        circleView.VT_fillView(containerForCircleView)
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
