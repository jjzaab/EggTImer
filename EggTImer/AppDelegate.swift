//
//  AppDelegate.swift
//  EggTImer
//
//  Created by support-mac-mini on 4/16/18.
//  Copyright © 2018 support-mac-mini. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {


    @IBOutlet weak var startTImerMenuItem: NSMenuItem!
    @IBOutlet weak var stopTImerMenuItem: NSMenuItem!
    @IBOutlet weak var resetTimerMenuItem: NSMenuItem!
    
    func applicationDidFinishLaunching(_ aNotification: Notification) {
        enableMenus(start: true, stop: false, reset: false)
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }

    func enableMenus(start: Bool, stop: Bool, reset: Bool) {
        startTImerMenuItem.isEnabled = start
        stopTImerMenuItem.isEnabled = stop
        resetTimerMenuItem.isEnabled = reset
    }

}

