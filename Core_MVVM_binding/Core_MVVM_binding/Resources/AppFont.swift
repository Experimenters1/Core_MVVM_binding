//
//  AppFont.swift
//  Core_MVVM_binding
//
//  Created by Huy vu on 18/6/25.
//

import UIKit

class AppFont {
  enum FontName: String {
    case familyRegular = ""
  }
  
  class func font(_ name: FontName, size: CGFloat) -> UIFont {
    guard let font = UIFont(name: name.rawValue, size: size) else {
      return UIFont.systemFont(ofSize: size)
    }
    return font
  }
  
  class func fetchName() {
    for family in UIFont.familyNames {
      LogManager.show(log: .info, "Familys: \(family)")
      for name in UIFont.fontNames(forFamilyName: family) {
        LogManager.show(log: .info, "Font: \(name)")
      }
    }
  }
}

