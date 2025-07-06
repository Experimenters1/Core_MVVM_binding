//
//  NSObjectExtension.swift
//  Core_MVVM_binding
//
//  Created by Huy Vu on 2/7/25.
//

import Foundation

extension NSObject {
  public class var className: String {
    return String(describing: self)
  }
  
  public var className: String {
    return String(describing: self)
  }
}
