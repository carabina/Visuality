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
        let currentDate = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let componentsForCurrentDate = calendar.components(.Second, fromDate: currentDate)
        let currentSeconds = componentsForCurrentDate.second
        return currentSeconds
    }
    
    public func VT_minutes() -> Int {
        let currentDate = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let componentsForCurrentDate = calendar.components(.Minute, fromDate: currentDate)
        let currentMinutes = componentsForCurrentDate.minute
        return currentMinutes
    }
    
    public func VT_hours() -> Int {
        let currentDate = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let componentsForCurrentDate = calendar.components(.Hour, fromDate: currentDate)
        let currentHours = componentsForCurrentDate.hour
        return currentHours
    }
    
    public func VT_day() -> Int {
        let currentDate = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let componentsForCurrentDate = calendar.components(.Day, fromDate: currentDate)
        let currentDay = componentsForCurrentDate.day
        return currentDay
    }
    
    public func VT_month() -> Int {
        let currentDate = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let componentsForCurrentDate = calendar.components(.Month, fromDate: currentDate)
        let currentMonth = componentsForCurrentDate.month
        return currentMonth
    }
    
    public func VT_year() -> Int {
        let currentDate = NSDate()
        let calendar = NSCalendar.currentCalendar()
        let componentsForCurrentDate = calendar.components(.Year, fromDate: currentDate)
        let currentYear = componentsForCurrentDate.year
        return currentYear
    }
    
    
    // MARK: Private object methods
    
}