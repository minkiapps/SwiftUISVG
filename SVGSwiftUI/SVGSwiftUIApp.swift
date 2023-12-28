//
//  SVGSwiftUIApp.swift
//  SVGSwiftUI
//
//  Created by Mingkang Pan on 28.12.23.
//

import SwiftUI
import SDWebImageSVGCoder
import SDWebImageSVGNativeCoder

@main
struct SVGSwiftUIApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        
        SDImageCodersManager.shared.addCoder(SDImageSVGCoder.shared)
        //SDImageCodersManager.shared.addCoder(SDImageSVGNativeCoder.shared)
        
        return true
    }
}

