//

//  AppDelegate.swift

//  ASPOrientationIOS

//

//  Created by Vignesh on 7/6/19.

//  Copyright © 2019 VigneshPranav. All rights reserved.

//



import UIKit

import IQKeyboardManagerSwift

import Firebase

import UserNotifications

//import FirebaseCore
//import FirebaseMessaging
//import FirebaseInstanceID


@UIApplicationMain

class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    
    var window: UIWindow?
    let gcmMessageIDKey = "gcm.message_id"
    
    
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        
        let notificationtoken = deviceToken.map {String(format: "%02.2hhx", $0)}.joined()
        
        print("token :\(notificationtoken)")
        
        
        
    }
    
    
    
    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        
        print("failed to register for remote notifications with with error: \(error)")
        
    }
    
    
    
//    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
//
//        completionHandler([.alert, . sound])
//
//    }
    
    
    
//    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
//
//        if response.notification.request.identifier == "loginnotifications" {
//
//            print("handling notifcation with the identifier 'loginnotifications'")
//
//        }
//
//        if let notification = response.notification.request.content.userInfo as?
//
//            [String:AnyObject]{
//
//            let message = parseRemoteNotification(notification: notification)
//
//            print(message as Any)
//
//        }
//
//        completionHandler()
//
//    }
//
    
    
    private func parseRemoteNotification(notification:[String:AnyObject]) -> String? {
        
        if let aps = notification["aps"] as? [String:AnyObject]{
            
            let alert = aps["alert"] as? String
            
            return alert
            
        }
        
        
        
        return nil
        
    }
    
    
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        // Override point for customization after application launch.
        
        
        
        IQKeyboardManager.shared.enable = true
        
        UserDefaults.standard.register(defaults: ["mytoken" : "L"])
        
        let token = UserDefaults.standard.object(forKey: "mytoken") as? String
        
        print(token!)
        
        
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        
        
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        
        
        FirebaseApp.configure()
        
        // [START set_messaging_delegate]
        Messaging.messaging().delegate = self
        // [END set_messaging_delegate]
        // Register for remote notifications. This shows a permission dialog on first run, to
        // show the dialog at a more appropriate time move this registration accordingly.
        // [START register_for_notifications]
        if #available(iOS 10.0, *) {
            // For iOS 10 display notification (sent via APNS)
            UNUserNotificationCenter.current().delegate = self
            
            let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
            UNUserNotificationCenter.current().requestAuthorization(
                options: authOptions,
                completionHandler: {_, _ in })
        } else {
            let settings: UIUserNotificationSettings =
                UIUserNotificationSettings(types: [.alert, .badge, .sound], categories: nil)
            application.registerUserNotificationSettings(settings)
        }
        
        application.registerForRemoteNotifications()
        
        // [END register_for_notifications]
        
        
        
        if (token == "U") {
            
            
            
            let initialViewController = storyboard.instantiateViewController(withIdentifier: "NavigationController")
            
            self.window?.rootViewController = initialViewController
            
            self.window?.makeKeyAndVisible()
            
        }
            
        else {
            
            let initialViewController = storyboard.instantiateViewController(withIdentifier: "LoginViewController")
            
            self.window?.rootViewController = initialViewController
            
            self.window?.makeKeyAndVisible()
            
        }
        
        
        
        UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound]) { (granted, error) in
            
            print("granted: \(granted)")
            
        }
        
        
        
        UNUserNotificationCenter.current().delegate = self
        
        
        
        //        registerForPushNotifications()
        
        
        
        UIApplication.shared.registerForRemoteNotifications()
        
        
        
        return true
        
    }
    
    
    
    
    
    
    
    func applicationWillResignActive(_ application: UIApplication) {
        
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
        
    }
    
    
    
    func applicationDidEnterBackground(_ application: UIApplication) {
        
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        
    }
    
    
    
    func applicationWillEnterForeground(_ application: UIApplication) {
        
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        
    }
    
    
    
    func applicationDidBecomeActive(_ application: UIApplication) {
        
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        
    }
    
    
    
    func applicationWillTerminate(_ application: UIApplication) {
        
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
        
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any]) {
        // If you are receiving a notification message while your app is in the background,
        // this callback will not be fired till the user taps on the notification launching the application.
        // TODO: Handle data of notification
        
        // With swizzling disabled you must let Messaging know about the message, for Analytics
        // Messaging.messaging().appDidReceiveMessage(userInfo)
        
        // Print message ID.
        if let messageID = userInfo[gcmMessageIDKey] {
            print("Message ID: \(messageID)")
        }
        
        // Print full message.
        print(userInfo)
    }
    
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any],
                     fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        // If you are receiving a notification message while your app is in the background,
        // this callback will not be fired till the user taps on the notification launching the application.
        // TODO: Handle data of notification
        
        // With swizzling disabled you must let Messaging know about the message, for Analytics
        // Messaging.messaging().appDidReceiveMessage(userInfo)
        
        // Print message ID.
        if let messageID = userInfo[gcmMessageIDKey] {
            print("Message ID: \(messageID)")
        }
        
        // Print full message.
        print(userInfo)
        
        completionHandler(UIBackgroundFetchResult.newData)
    }
    
    
    
    
    
    
    
    //        func registerForPushNotifications() {
    //
    //            UNUserNotificationCenter.current()
    //
    //                .requestAuthorization(options: [.alert, .sound, .badge]) {
    //
    //                    [weak self] granted, error in
    //
    //
    //
    //                    print("Permission granted: \(granted)")
    //
    //                    guard granted else { return }
    //
    //                    self?.getNotificationSettings()
    //
    //            }
    //
    //        }
    //
    //
    //
    //        func getNotificationSettings() {
    //
    //            UNUserNotificationCenter.current().getNotificationSettings { settings in
    //
    //                print("Notification settings: \(settings)")
    //
    //                guard settings.authorizationStatus == .authorized else { return }
    //
    //                DispatchQueue.main.async {
    //
    //                    UIApplication.shared.registerForRemoteNotifications()
    //
    //                }
    //
    //            }
    //
    //        }
    //
    //
    //
    //
    //
    //        func application(
    //
    //            _ application: UIApplication,
    //
    //            didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data
    //
    //            ) {
    //
    //            let tokenParts = deviceToken.map { data in String(format: "%02.2hhx", data) }
    //
    //            let token = tokenParts.joined()
    //
    //            print("Device Token: \(token)")
    //
    //        }
    //
    //
    //
    //        func application(
    //
    //            _ application: UIApplication,
    //
    //            didFailToRegisterForRemoteNotificationsWithError error: Error) {
    //
    //            print("Failed to register: \(error)")
    //
    //        }
    //
    
    
    
    
    
    
}

extension AppDelegate: MessagingDelegate{
    func messaging(_ messaging: Messaging, didReceiveRegistrationToken fcmToken: String) {
        print("Firebase registration token: \(fcmToken)")
        
        let dataDict:[String: String] = ["token": fcmToken]
        NotificationCenter.default.post(name: Notification.Name("FCMToken"), object: nil, userInfo: dataDict)
        // TODO: If necessary send token to application server.
        // Note: This callback is fired at each app startup and whenever a new token is generated.
    }
    
    func messaging(_ messaging: Messaging, didReceive remoteMessage: MessagingRemoteMessage) {
        print("Message Data", remoteMessage.appData)
    }
}

@available(iOS 10, *)
extension AppDelegate : UNUserNotificationCenterDelegate {
    
    // Receive displayed notifications for iOS 10 devices.
    func userNotificationCenter(_ center: UNUserNotificationCenter,
                                willPresent notification: UNNotification,
                                withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        let userInfo = notification.request.content.userInfo
        
        // With swizzling disabled you must let Messaging know about the message, for Analytics
        // Messaging.messaging().appDidReceiveMessage(userInfo)
        
        // Print message ID.
        if let messageID = userInfo[gcmMessageIDKey] {
            print("Message ID: \(messageID)")
        }
        
        // Print full message.
        print(userInfo)
        
        // Change this to your preferred presentation option
        completionHandler([.alert, . sound])
    }
    
    func userNotificationCenter(_ center: UNUserNotificationCenter,
                                didReceive response: UNNotificationResponse,
                                withCompletionHandler completionHandler: @escaping () -> Void) {
        let userInfo = response.notification.request.content.userInfo
        // Print message ID.
        if let messageID = userInfo[gcmMessageIDKey] {
            print("Message ID: \(messageID)")
        }
        
        // Print full message.
        print(userInfo)
        
        if response.notification.request.identifier == "loginnotifications" {
            
                        print("handling notifcation with the identifier 'loginnotifications'")
            
                    }
        
                    if let notification = response.notification.request.content.userInfo as?
            
                        [String:AnyObject]{
            
                        let message = parseRemoteNotification(notification: notification)
            
                        print(message as Any)
            
                    }
        
        
        
        completionHandler()
    }
}
