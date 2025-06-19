//
//  UserDefaultsManager.swift
//  Core_MVVM_binding
//
//  Created by Huy vu on 18/6/25.
//

import Foundation

final class UserDefaultsManager {
  enum Keys: String {
    case openAppCount
    case didPushRate
    case choseLanguage
    case hasRecordDoneTutorial
    case tutorVoice
    case userId
    case didCreatePlan
  }
  
  class func set<T: Encodable>(_ value: T, key: Keys) {
    UserDefaults.standard.set(value, forKey: key.rawValue)
  }
  
  class func setObject<T: Encodable>(_ value: T, key: Keys) {
    guard let data = try? JSONEncoder().encode(value) else {
      return
    }
    set(data, key: key)
  }
  
  class func get<T: Decodable>(of type: T.Type, key: Keys) -> T? {
    return UserDefaults.standard.object(forKey: key.rawValue) as? T
  }
  
  class func getObject<T: Decodable>(of type: T.Type, key: Keys) -> T? {
    guard let data = get(of: Data.self, key: key) else {
      return nil
    }
    return try? JSONDecoder().decode(T.self, from: data)
  }
  
  class func remove(key: Keys) {
    UserDefaults.standard.removeObject(forKey: key.rawValue)
  }
}
