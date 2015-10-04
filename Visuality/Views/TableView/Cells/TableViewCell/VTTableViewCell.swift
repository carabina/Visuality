//
//  VTTableViewCell.swift
//  BirthdayClient
//
//  Created by Igor Matyushkin on 04.10.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import UIKit

public class VTTableViewCell: UITableViewCell {

    // MARK: Class variables & properties
    
    
    // MARK: Class methods
    
    public class func reuseIdentifier() -> String {
        return "table-view-cell"
    }
    
    public class func heightWithParameter(parameter: AnyObject?) -> CGFloat {
        return 44.0
    }
    
    
    // MARK: Initializers
    
    
    // MARK: Deinitializer
    
    deinit {
    }
    
    
    // MARK: Outlets
    
    
    // MARK: Variables & properties
    
    
    // MARK: Public methods
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
    // MARK: Private methods
    
    
    // MARK: Actions
    
    
    // MARK: Protocol methods
    
}
