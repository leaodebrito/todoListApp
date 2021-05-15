//
//  Make_it_So_Sl_LiveApp.swift
//  Make it So Sl Live
//
//  Created by Bruno Brito on 12/05/21.
//

import SwiftUI
import Firebase


@main
struct Make_it_So_Sl_LiveApp: App {

    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            TaskListView()
        }
    }
}


class AppDelegate: UIResponder, UIApplicationDelegate {

  var window: UIWindow?

  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions:
        [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
    FirebaseApp.configure()
    return true
  }
}
