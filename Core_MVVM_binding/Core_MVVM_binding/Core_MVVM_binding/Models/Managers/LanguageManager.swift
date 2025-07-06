//
//  LanguageManager.swift
//  Core_MVVM_binding
//
//  Created by Huy vu on 18/6/25.
//

import Foundation

class LanguageManager {
  static let shared = LanguageManager()
  
  private var choseLanguage: Language = .english
  
  func getChoseLanguage() -> Language {
    return choseLanguage
  }
  
  func setChoseLanguage(_ newValue: Language) {
    self.choseLanguage = newValue
    UserDefaultsManager.set(newValue.rawValue, key: .choseLanguage)
  }
  
  func fetchChoseLanguage() {
    self.choseLanguage = Language(rawValue: UserDefaultsManager.get(of: Int.self, key: .choseLanguage) ?? 0) ?? .english
  }
  
  class func localized(key: String) -> String? {
    guard let bundlePath = Bundle.main.path(forResource: shared.choseLanguage.code, ofType: "lproj") else {
      return nil
    }
    guard let bundle = Bundle(path: bundlePath) else {
      return nil
    }
    return NSLocalizedString(key, bundle: bundle, comment: String())
  }
}
