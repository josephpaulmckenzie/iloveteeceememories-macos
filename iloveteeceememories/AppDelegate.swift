//
//  AppDelegate.swift
//  iloveteeceememories
//
//  Created by Joseph Mckenzie on 1/2/20.
//  Copyright © 2020 Joseph Mckenzie. All rights reserved.
//

import Cocoa
import SwiftUI
import Firebase
import FirebaseDatabase

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    var window: NSWindow!
    var statusBarItem: NSStatusItem!


    func applicationDidFinishLaunching(_ aNotification: Notification) {
        FirebaseApp.configure()

        fetchTeeceeLoves()
//        let numberFormatter = NumberFormatter()
//        let numberFormatter2 =  numberFormatter.string(from: loveteecee)
//
//
        
        
        // Create the SwiftUI view that provides the window contents.
        let statusBar = NSStatusBar.system
        statusBarItem = statusBar.statusItem(
            withLength:80)
        statusBarItem.button?.title = "🐶 "
        let statusBarMenu = NSMenu(title: "Fetch Teecee & Coder Pics")
        statusBarItem.menu = statusBarMenu
        
//
//        statusBarMenu.addItem(NSMenuItem(title: "Loves", action: #selector(AppDelegate.fetchPuppyPics),   keyEquivalent: "Loves"))

        statusBarMenu.addItem(
            withTitle: "Random Teecee Pic",
            action: #selector(AppDelegate.fetchPuppyPics),
            keyEquivalent: "")
        
        statusBarMenu.addItem(
            withTitle: "Slideshow of Teecee Pics",
            action: #selector(AppDelegate.fetchPuppyPics),
            keyEquivalent: "")
        
        statusBarMenu.addItem(
            withTitle: "Gallery of Teecee Pics",
            action: #selector(AppDelegate.fetchPuppyPics),
            keyEquivalent: "")
        
        statusBarMenu.addItem(
            withTitle: "Upload a Teecee Pic",
            action: #selector(AppDelegate.fetchPuppyPics),
            keyEquivalent: "")
        
    }
    
    
        func fetchTeeceeLoves() {
            
            var ref: DatabaseReference!
                      ref = Database.database().reference()
                      ref.observe(.value, with: { snapshot in
                          let allDocs = snapshot.value as! NSDictionary
                          let loves = allDocs["Loves"] as! NSNumber
                          let numberFormatter = NumberFormatter()
                          let numberFormatter2 =  numberFormatter.string(from: loves)
                          let statusBar = NSStatusBar.system
                          self.statusBarItem = statusBar.statusItem(
                                         withLength:80)
                          self.statusBarItem.button?.title = "🐶 "   + (numberFormatter2!)
                      })
    }
    
    
    @objc func fetchPuppyPics(_ sender: NSMenuItem) {
        
//          var ref: DatabaseReference!
//            ref = Database.database().reference()
//            ref.observe(.value, with: { snapshot in
//                let allDocs = snapshot.value as! NSDictionary
//                let loves = allDocs["Loves"] as! NSNumber
//                let numberFormatter = NumberFormatter()
//                let numberFormatter2 =  numberFormatter.string(from: loves)
//                let statusBar = NSStatusBar.system
//                self.statusBarItem = statusBar.statusItem(
//                               withLength:80)
//                self.statusBarItem.button?.title = "🐶 "   + (numberFormatter2!)
//            })
                
    }
        
        func applicationWillTerminate(_ aNotification: Notification) {
            // Insert code here to tear down your application
        }
    


}
