//
//  PushUpdateConfig.swift
//  Core_MVVM_binding
//
//  Created by Huy vu on 18/6/25.
//

import Foundation

struct PushUpdateConfig: Codable {
  let status: Bool
  let nowVersion: Double
  let obligatory: Bool
  let content: String?
}
