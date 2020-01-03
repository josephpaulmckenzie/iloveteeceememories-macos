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

        
        // Create the SwiftUI view that provides the window contents.
        let statusBar = NSStatusBar.system
        statusBarItem = statusBar.statusItem(
            withLength: NSStatusItem.squareLength)
        statusBarItem.button?.title = " 🐶 "
        let statusBarMenu = NSMenu(title: "Fetch Teecee & Coder Pics")
        statusBarItem.menu = statusBarMenu
        
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
    
    @objc func fetchPuppyPics(_ sender: NSMenuItem) {
        if sender.title == "Random Teecee Pic" {
           
            var ref: DatabaseReference!
            ref = Database.database().reference()
            ref.observe(.value, with: { snapshot in
              print(snapshot.value as Any)
            })


            }
        
        func applicationWillTerminate(_ aNotification: Notification) {
            // Insert code here to tear down your application
        }
    }


}
