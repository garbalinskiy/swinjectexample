//
//  AppDelegate.swift
//  SwinjectExample
//
//  Created by Serghei Garbalinschi on 8.02.21.
//

import UIKit
import Swinject

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    
    lazy var container: Container  = {
        let container = Container()
        
        container.register(RemoteConfigProtocol.self) { _ in
            RemoteConfig()
        }
        
        container.register(NetworkServiceProtocol.self) { _ in
            NetworkService()
        }
        
        // Social
        
        container.register(SocialServiceProtocol.self) { resolver in
            SocialService(networkService: resolver.resolve(NetworkServiceProtocol.self)!)
        }
        
        container.register(SocialTopicsProvider.self) { resolver in
            resolver.resolve(SocialServiceProtocol.self)!
        }
        
        container.register(SocialLikesProvider.self) { resolver in
            resolver.resolve(SocialServiceProtocol.self)!
        }
        
        // Premium
        
        container.register(PremiumServiceProtocol.self) { resolver in
            PremiumService(networkService: resolver.resolve(NetworkServiceProtocol.self)!)
        }
        
        container.register(PremiumStatusProvider.self) { resolver in
            resolver.resolve(PremiumServiceProtocol.self)!
        }
        
        container.register(PremiumSubscriptionProvider.self) { resolver in
            resolver.resolve(PremiumServiceProtocol.self)!
        }
        
        return container
    }()
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }
    
    // MARK: UISceneSession Lifecycle
    
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }
    
    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    
}

