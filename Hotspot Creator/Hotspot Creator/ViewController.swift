//
//  ViewController.swift
//  Hotspot Creator
//
//  Created by Austin Toot on 4/18/18.
//  Copyright © 2018 Austin Toot. All rights reserved.
//

import Cocoa
import CoreFoundation

class ViewController: NSViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //edit preferences in com.apple.nat.plist
        //https://www.amsys.co.uk/change-internet-sharing-subnet-on-mac-os-x/
        //https://developer.apple.com/library/content/documentation/CoreFoundation/Conceptual/CFPreferences/CFPreferences.html#//apple_ref/doc/uid/10000129i
        
        let appID = "com.apple.nat" as CFString
        let property = "something, idk" as CFString
        let value = "something else" as CFString
        
        CFPreferencesSetValue(property, value, appID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost)
        
        CFPreferencesSynchronize(appID, kCFPreferencesCurrentUser, kCFPreferencesAnyHost)
        
        
        
    }

    override var representedObject: Any? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

