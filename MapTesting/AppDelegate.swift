//
//  AppDelegate.swift
//  MapTesting
//
//  Created by Austins Work on 5/26/17.
//  Copyright © 2017 AustinWhitleyWork. All rights reserved.
//

import UIKit
import GoogleMaps

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        GMSServices.provideAPIKey("AIzaSyDS4W0TYmGP623xcTQuKXUoB8L6QFRfmsU")
        return true
    }


}

