//
//  UIApplicationExtension.swift
//  Core_MVVM_binding
//
//  Created by Huy vu on 18/6/25.
//

import UIKit

extension UIApplication {
  class func context() -> UINavigationController? {
    return (UIApplication.shared.connectedScenes
        .compactMap { $0 as? UIWindowScene }
        .flatMap { $0.windows }
        .first { $0.isKeyWindow }?.rootViewController) as? UINavigationController
}
  
  class func topViewController() -> UIViewController? {
    return context()?.topViewController
  }
}
