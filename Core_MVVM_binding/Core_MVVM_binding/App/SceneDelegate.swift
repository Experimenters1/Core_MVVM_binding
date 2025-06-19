//
//  SceneDelegate.swift
//  Core_MVVM_binding
//
//  Created by Huy vu on 14/6/25.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
  
  var window: UIWindow?

  func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
    guard let windowScene = (scene as? UIWindowScene) else { return }
    
    
         let window = UIWindow(windowScene: windowScene)
         

       
       let navigationController = UINavigationController(rootViewController: HomeViewController())
         navigationController.isNavigationBarHidden = true
         
         window.rootViewController = navigationController
         self.window = window
         window.makeKeyAndVisible()
  }
  
  func sceneDidDisconnect(_ scene: UIScene) {
    // Called as the scene is being released by the system.
    // This occurs shortly after the scene enters the background, or when its session is discarded.
    // Release any resources associated with this scene that can be re-created the next time the scene connects.
    // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
  }
  
  func sceneDidBecomeActive(_ scene: UIScene) {
     
  }
  
  func sceneWillResignActive(_ scene: UIScene) {
    guard App.shared.isBecomeActive() else {
      return
    }
    showAppOpen()
  }
  
  func sceneWillEnterForeground(_ scene: UIScene) {
    // Called as the scene transitions from the background to the foreground.
    // Use this method to undo the changes made on entering the background.
  }
  
  func sceneDidEnterBackground(_ scene: UIScene) {
    // Called as the scene transitions from the foreground to the background.
    // Use this method to save data, release shared resources, and store enough scene-specific state information
    // to restore the scene back to its current state.
  }
  
}

extension SceneDelegate {
  private func showAppOpen() {
    guard App.shared.allowShowAppOpen else {
      return
    }
    guard let topVC = UIApplication.topViewController() else {
      return
    }
    
  }
}
