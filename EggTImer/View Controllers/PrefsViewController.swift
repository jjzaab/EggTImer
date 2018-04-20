//
//  PrefsViewController.swift
//  EggTImer
//
//  Created by support-mac-mini on 4/18/18.
//  Copyright © 2018 support-mac-mini. All rights reserved.
//

import Cocoa

class PrefsViewController: NSViewController {
    @IBOutlet weak var presetsPopup: NSPopUpButton!
    @IBOutlet weak var customSlider: NSSlider!
    @IBOutlet weak var customTextField: NSTextField!
    
    var prefs = Preferences()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        showExistingPrefs()
        // Do view setup here.
    }
    @IBAction func popupValueChanged(_ sender: Any) {
        if (sender as AnyObject).selectedItem??.title == "Custom" {
            customSlider.isEnabled = true
            return
        }
        
        let newTimerDuration = (sender as AnyObject).selectedTag()
        customSlider.integerValue = newTimerDuration
        showSliderValueAsText()
        customSlider.isEnabled = false
    }
    @IBAction func sliderValueChanged(_ sender: Any) {
        showSliderValueAsText()
    }
    @IBAction func cancelButtonClicked(_ sender: Any) {
        view.window?.close()
    }
    @IBAction func okButtonClicked(_ sender: Any) {
        saveNewPrefs()
        view.window?.close()
    }
    
    func showExistingPrefs() {
        
        let selectedTimeInMinutes = Int(prefs.selectedTime) / 60
        
        presetsPopup.selectItem(withTitle: "Custom")
        customSlider.isEnabled = true
        
        for item in presetsPopup.itemArray {
            if item.tag == selectedTimeInMinutes {
                presetsPopup.select(item)
                customSlider.isEnabled = false
                break
            }
        }
        
        customSlider.integerValue = selectedTimeInMinutes
        showSliderValueAsText()
    }
    
    func showSliderValueAsText() {
        let newTimerDuration = customSlider.integerValue
        let minutesDescription = (newTimerDuration == 1) ? "minute" : "minutes"
        customTextField.stringValue = "\(newTimerDuration) \(minutesDescription)"
    }
    
    func saveNewPrefs() {
        prefs.selectedTime = customSlider.doubleValue * 60
        NotificationCenter.default.post(name: Notification.Name(rawValue: "PrefsChanged"), object: nil)
    }
}
