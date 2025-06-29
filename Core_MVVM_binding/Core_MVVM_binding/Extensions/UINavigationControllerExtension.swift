//
//  UINavigationControllerExtension.swift
//  Core_MVVM_binding
//
//  Created by Huy Vu on 22/6/25.
//

import UIKit

extension UINavigationController {
  func get(viewController: UIViewController.Type) -> UIViewController? {
    return viewControllers.first(where: { $0.isKind(of: viewController.self) })
  }
  
  func push(to viewController: UIViewController, animated: Bool = false) {
    pushViewController(viewController, animated: animated)
  }
  
  func present(to viewController: UIViewController, animated: Bool = false) {
    present(viewController, animated: animated, completion: nil)
  }
  
  func pop(index: Int, animated: Bool = false) {
    guard index <= viewControllers.count - 1 else {
      return
    }
    let viewController = viewControllers[index]
    popToViewController(viewController, animated: animated)
  }
  
  func pop(animated: Bool = false) {
    popViewController(animated: animated)
  }
  
  func pop(to viewController: UIViewController, animated: Bool = false) {
    popToViewController(viewController, animated: animated)
  }
  
  func dismiss(animated: Bool = false) {
    dismiss(animated: animated, completion: nil)
  }
  
  func remake(maxLength: Int, to viewController: UIViewController) {
    let belowControllers = viewControllers.prefix(maxLength)
    viewControllers = belowControllers + [viewController]
  }
  
  func root(viewController: UIViewController) {
    viewControllers = [viewController]
  }
  
  func getController<T: UIViewController>(ofClass: T.Type) -> T? {
    return viewControllers.first { $0 is T } as? T
  }
  
  func popToVC<T: UIViewController>(ofClass: T.Type, animated: Bool = false) {
    guard let viewController = viewControllers.first(where: { $0 is T }) as? T else {
      LogManager.show(log: .debug, "\(ofClass) không tìm thấy")
      return
    }
    
    popToViewController(viewController, animated: animated)
  }
  
  func removeViewController(_ controller: UIViewController.Type) {
    if let viewController = self.viewControllers.first(where: { $0.isKind(of: controller.self) }) {
      viewController.removeFromParent()
    } else {
      LogManager.show(log: .debug, "Khong co")
    }
  }
}
