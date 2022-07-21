//
//  AppDelegate.swift
//  color-customization
//
//  Created by Yurii Dukhovnyi on 21.07.2022.
//

import SalemoveSDK
import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    private let gliaAppDelegate = SalemoveAppDelegate()

    func application(
        _ application: UIApplication,
        didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
    ) -> Bool {

        gliaAppDelegate.application(
            application,
            didFinishLaunchingWithOptions: launchOptions
        )

        return true
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        
        gliaAppDelegate.applicationDidBecomeActive(application)
    }
}

