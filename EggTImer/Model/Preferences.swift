//
//  Preferences.swift
//  EggTImer
//
//  Created by support-mac-mini on 4/19/18.
//  Copyright © 2018 support-mac-mini. All rights reserved.
//

import Foundation

struct Preferences {
    var selectedTime: TimeInterval {
        get {
            let savedTime = UserDefaults.standard.double(forKey: "selectedTime")
            if savedTime > 0 {
                return savedTime
            }
            
            return 360
        }
        set {
            UserDefaults.standard.set(newValue, forKey: "selectedTime")
        }
    }
}
