//
//  RatingApp.swift
//  Core_MVVM_binding
//
//  Created by Huy vu on 18/6/25.
//

import UIKit

final class RatingApp {
  static let shared = RatingApp()
  
  private var didPushRate = false
}

extension RatingApp {
  func fetch() {
    self.didPushRate = UserDefaultsManager.get(of: Bool.self, key: .didPushRate) ?? false
  }
  
  func didRate() {
    self.didPushRate = true
    UserDefaultsManager.set(true, key: .didPushRate)
  }
  
  func rateSetting() -> Bool {
    guard
      let pushRateConfig = App.shared.pushRateConfig,
      pushRateConfig.status,
      pushRateConfig.setting
    else {
      return false
    }
    return true
  }
  
  func ratingOnAppStore() {
    let reviewPath = "https://apps.apple.com/app/id\(AppText.App.idApp)?action=write-review"
    guard let writeReviewURL = reviewPath.getCleanedURL() else {
      return
    }
    UIApplication.shared.open(writeReviewURL,
                              options: [:],
                              completionHandler: nil)
  }
}

