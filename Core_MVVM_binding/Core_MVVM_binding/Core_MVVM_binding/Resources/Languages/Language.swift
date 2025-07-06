//
//  Language.swift
//  Core_MVVM_binding
//
//  Created by Huy vu on 18/6/25.
//

import Foundation

enum Language: Int, CaseIterable {
  case english
  case vietnamese
  
  var code: String {
    switch self {
    case .english:
      return "en"
    case .vietnamese:
      return "vi"
    }
  }
  
  var name: String {
    switch self {
    case .english:
      return "English"
    case .vietnamese:
      return "Vietnamese"
    }
  }
  
  var ensign: AppImage.Image? {
    switch self {
    case .english:
      return nil
    case .vietnamese:
      return nil
    }
  }
}
