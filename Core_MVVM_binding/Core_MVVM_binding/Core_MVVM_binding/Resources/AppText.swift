//
//  AppText.swift
//  Core_MVVM_binding
//
//  Created by Huy vu on 18/6/25.
//

import Foundation

class AppText {
  enum LanguageKeys: String {
    case language
    
    var localized: String? {
      return LanguageManager.localized(key: self.rawValue)
    }
  }
  
  enum App {
    static let idApp = ""
    static let privacyLink = "https://nowtechpro.github.io/Privacy/Privacy.html"
    static let termsOfUse = "https://www.apple.com/legal/internet-services/itunes/dev/stdeula"
    static let email = "icyone456@gmail.com"
    static let keyID = ""
    static let issuerID = ""
    static let privateKey = ""
  }
  
  enum Default {
  }
  
  enum Placement {
    static let appOpen = "App_Open"
    static let splash = "Splash_1"
    static let rewarded = "Rewarded"
    static let rewardedInterstitial = "Rewarded_Interstitial"
    static let interstitial1 = "Interstitial_1"
    static let interstitial2 = "Interstitial_2"
    static let native = "Native"
    static let banner1 = "Banner_1"
    static let banner2 = "Banner_2"
    static let banner3 = "Banner_3"
  }
}
