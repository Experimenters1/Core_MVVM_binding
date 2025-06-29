//
//  BaseViewModel.swift
//  Core_MVVM_binding
//
//  Created by Huy Vu on 22/6/25.
//

import Foundation
import Combine

class BaseViewModel {
  var subscriptions = Set<AnyCancellable>()
  
  deinit {
    removeSubs()
  }
  
  func removeSubs() {
    subscriptions.forEach { $0.cancel() }
    subscriptions.removeAll()
  }
}
