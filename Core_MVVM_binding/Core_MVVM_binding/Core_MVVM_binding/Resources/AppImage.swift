//
//  AppImage.swift
//  Core_MVVM_binding
//
//  Created by Huy vu on 18/6/25.
//

import UIKit

class AppImage {
  enum Image: String {
    case normal = "ic_normal"
  }
  
  static func image(_ name: Image) -> UIImage {
    if let image = UIImage(named: "\(name.rawValue)") {
      return image
    } else if let imageSystem = UIImage(systemName: "\(name.rawValue)") {
      return imageSystem
    }
    return image(Image.normal)
  }
}
