//
//  AppFont.swift
//  Core_MVVM_binding
//
//  Created by Huy vu on 18/6/25.
//

import UIKit

class AppFont {
  enum FontName: String {
    case interRegular = "Inter-Regular"
    case interMedium = "Inter-Medium"
    case interSemiBold = "Inter-SemiBold"
    case interBold = "Inter-Bold"
    case interExtraBoldItalic = "Inter-ExtraBoldItalic"
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

extension UIFont {
    class func interFont(weight: UIFont.Weight = .regular, size: CGFloat) -> UIFont {
        let fontName: AppFont.FontName
        switch weight {
        case .bold, .black: fontName = .interBold
        case .medium: fontName = .interMedium
        case .regular: fontName = .interRegular
        case .semibold: fontName = .interSemiBold
        default: fontName = .interRegular
        }
        return AppFont.font(fontName, size: size)
    }
}

