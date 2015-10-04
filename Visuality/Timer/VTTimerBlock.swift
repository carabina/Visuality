//
//  VTTimerBlock.swift
//  VisualityDemo
//
//  Created by Igor Matyushkin on 04.10.15.
//  Copyright © 2015 Igor Matyushkin. All rights reserved.
//

import Foundation

public typealias VTTimerBlock = (timer: VTTimer, tickCount: Int, timeIntervalSinceStart: NSTimeInterval) -> Void