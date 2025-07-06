//
//  LogManager.swift
//  Core_MVVM_binding
//
//  Created by Huy vu on 18/6/25.
//

import Foundation

class LogManager {
  enum Log: String {
    case debug = "Debug"
    case error = "Error"
    case api = "API"
    case info = "Info"
    case notice = "Notice"
    case event = "Event"
  }
  
  class func show(log: Log,
                  _ items: Any...,
                  separator: String = " ",
                  terminator: String = "\n",
                  file: String = #file,
                  function: String = #function,
                  line: Int = #line
  ) {
#if DEBUG
    let fileName = URL(fileURLWithPath: file).lastPathComponent
    let logLine = "[Log] [\(log.rawValue)] [\(fileName)] [\(line)] [\(function)]"
    print(logLine, items, separator: separator, terminator: terminator)
#endif
  }
}
