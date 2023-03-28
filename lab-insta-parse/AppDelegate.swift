//
//  AppDelegate.swift
//  lab-insta-parse
//
//  Created by Manasa Pooni on 3/27/23.
//
import ParseSwift
import UIKit


@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.

        // TODO: Pt 1 - Initialize Parse SDK
        ParseSwift.initialize(applicationId: "KAttlXIqQLCCi33Oi6CdqeJ5TbMVF3xihPSEZH1P",
                              clientKey: "qIHWs2mcZaIbu10rxnnql4sR50UNMHZgZYCZy4ox",
                              serverURL: URL(string: "https://parseapi.back4app.com")!)


        // TODO: Pt 1: - Instantiate and save a test parse object to your server

        return true
    }


    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
 
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }
}

struct GameScore: ParseObject {

    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseACL?
    var originalData: Data?

    var playerName: String?
    var points: Int?
}


extension GameScore {

    init(playerName: String, points: Int) {
        self.playerName = playerName
        self.points = points
    }
}
