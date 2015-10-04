//
//  NSDateExtensionComponents.swift
//  BirthdayClient
//
//  Created by Igor Matyushkin on 04.10.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import Foundation

public extension NSDate {
    
    // MARK: Public class methods
    
    
    // MARK: Private class methods
    
    
    // MARK: Public object methods
    
    public func VT_seconds() -> Int {
        let calendar = NSCalendar.currentCalendar()
        let componentsForCurrentDate = calendar.components(.Second, fromDate: self)
        let currentSeconds = componentsForCurrentDate.second
        return currentSeconds
    }
    
    public func VT_minutes() -> Int {
        let calendar = NSCalendar.currentCalendar()
        let componentsForCurrentDate = calendar.components(.Minute, fromDate: self)
        let currentMinutes = componentsForCurrentDate.minute
        return currentMinutes
    }
    
    public func VT_hours() -> Int {
        let calendar = NSCalendar.currentCalendar()
        let componentsForCurrentDate = calendar.components(.Hour, fromDate: self)
        let currentHours = componentsForCurrentDate.hour
        return currentHours
    }
    
    public func VT_day() -> Int {
        let calendar = NSCalendar.currentCalendar()
        let componentsForCurrentDate = calendar.components(.Day, fromDate: self)
        let currentDay = componentsForCurrentDate.day
        return currentDay
    }
    
    public func VT_month() -> Int {
        let calendar = NSCalendar.currentCalendar()
        let componentsForCurrentDate = calendar.components(.Month, fromDate: self)
        let currentMonth = componentsForCurrentDate.month
        return currentMonth
    }
    
    public func VT_year() -> Int {
        let calendar = NSCalendar.currentCalendar()
        let componentsForCurrentDate = calendar.components(.Year, fromDate: self)
        let currentYear = componentsForCurrentDate.year
        return currentYear
    }
    
    
    // MARK: Private object methods
    
}