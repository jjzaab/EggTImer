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
        // Insert code here to initialize your application
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

