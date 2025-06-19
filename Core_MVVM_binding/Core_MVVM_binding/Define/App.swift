//
//  App.swift
//  Core_MVVM_binding
//
//  Created by Huy vu on 18/6/25.
//

import Foundation
import SwiftKeychainWrapper
import FirebaseRemoteConfig

final class App {
  static let shared = App()
  
  enum Keys {
    // Local
    static let installCount = "INSTALL_COUNT"
    // IAA
    static let adMobConfig = "ADMOB_V1_0"
    // Push Rate
    static let pushRateConfig = "PUSH_RATE_V1_0"
    // Push Update
    static let pushUpdateConfig = "PUSH_UPDATE_V1_0"
  }
  
  // Local
  private(set) var allowShowAppOpen = false
  private(set) var openAppCount = 0
  private(set) var installCount = 0
  private(set) var resignActiveDate: Date?
  // Push Rate
  private(set) var pushRateConfig: PushRateConfig?
  // Push Update
  private(set) var pushUpdateConfig: PushUpdateConfig?
  
}

extension App {
  func fetch() {
//    AppFont.fetchName()
    openApp()

    
 
    LanguageManager.shared.fetchChoseLanguage()
    
    RatingApp.shared.fetch()
   
  }
  
  func showAppOpen(enable: Bool) {
    self.allowShowAppOpen = enable
  }
  
  func resignActive() {
    self.resignActiveDate = Date()
  }
  
  func isBecomeActive() -> Bool {
    guard let resignActiveDate else {
      return false
    }
    let elapsedTime = Date().timeIntervalSince(resignActiveDate)
    return elapsedTime >= 5.0
  }
  
  func pushUpdate() -> Bool {
    guard
      let pushUpdateConfig,
      pushUpdateConfig.status,
      let versionString = Bundle.main.infoDictionary?["CFBundleShortVersionString"] as? String,
      let version = Double(versionString),
      version < pushUpdateConfig.nowVersion
    else {
      return false
    }
    return true
  }
}

extension App {
  private func openApp() {
    self.openAppCount = UserDefaultsManager.get(of: Int.self, key: .openAppCount) ?? 0
    self.openAppCount += 1
    UserDefaultsManager.set(self.openAppCount, key: .openAppCount)
    
    if openAppCount == 1 {
      self.installCount = KeychainWrapper.standard.integer(forKey: Keys.installCount) ?? 0
      self.installCount += 1
      KeychainWrapper.standard.set(installCount, forKey: Keys.installCount)
    }
  }
  
}
