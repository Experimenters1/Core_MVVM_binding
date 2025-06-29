//
//  Router.swift
//  Core_MVVM_binding
//
//  Created by Huy Vu on 22/6/25.
//

import UIKit

protocol Router {
  associatedtype RouteType: RawRepresentable where RouteType.RawValue: StringProtocol
  
  func route(to route: RouteType, parameters: [String: Any]?)
}

extension Router {
  func context() -> UINavigationController? {
      return (UIApplication.shared.connectedScenes
          .compactMap { $0 as? UIWindowScene }
          .flatMap { $0.windows }
          .first { $0.isKeyWindow }?.rootViewController) as? UINavigationController
  }
}

