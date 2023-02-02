//
//  AppDelegate.swift
//  My sample project
//
//  Created by Alex on 2/1/23.
//

import UIKit
import SupportSDK
import ZendeskCoreSDK

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // values removed for security reasons
        Zendesk.initialize(
            appId: "",
            clientId: "",
            zendeskUrl: "")
        
        let identity = Identity.createAnonymous()
        Zendesk.instance?.setIdentity(identity)
        Support.initialize(withZendesk: Zendesk.instance)

        return true
    }


}

