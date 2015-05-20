//
//  AppDelegate.swift
//  Project7WhitehousePetitions
//
//  Created by Henry on 5/18/15.
//  Copyright (c) 2015 Henry. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        
        //This window needs to know what its initial view controller is, and that gets set to its rootViewController property
        var tabBarController = window?.rootViewController as! UITabBarController
        //We need to create a new MasterViewController by hand, which means getting a reference to our Main.storyboard file
        var storyboard = UIStoryboard(name: "Main", bundle: nil)
        //We create our view controller, passing in the storyboard ID of the view controller we want, and typecast the result to be a UINavigationController
        var viewController = storyboard.instantiateViewControllerWithIdentifier("NavController") as! UINavigationController
        //We create a new UITabBarItem object for the new view controller, giving it the "Top Rated" icon and the tag 1
        viewController.tabBarItem = UITabBarItem(tabBarSystemItem: .TopRated, tag: 1)
        //We add the new view controller to our tab bar controller's viewControllers array, which will cause it to appear in the tab bar
        tabBarController.viewControllers?.append(viewController)
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

