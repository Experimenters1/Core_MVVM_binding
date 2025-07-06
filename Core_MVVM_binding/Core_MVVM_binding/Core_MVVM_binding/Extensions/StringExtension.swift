//
//  StringExtension.swift
//  Core_MVVM_binding
//
//  Created by Huy vu on 18/6/25.
//

import UIKit

extension String {
  // Chuyển đổi chuỗi thành URL sau khi loại bỏ các ký tự không hợp lệ.
  func getCleanedURL() -> URL? {
    guard !self.isEmpty else {
      return nil
    }
    if let url = URL(string: self) {
      return url
    } else if let urlEscapedString = self.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed),
              let escapedURL = URL(string: urlEscapedString) {
      return escapedURL
    }
    return nil
  }
  
  // Trả về text bản địa hoá với key này.
  func localized() -> String {
    return LanguageManager.localized(key: self) ?? String()
  }
  
  // Tính toán chiều cao cần thiết để hiển thị text.
  func heightText(width: CGFloat, font: UIFont) -> CGFloat {
    let maxSize = CGSize(width: width, height: CGFloat(MAXFLOAT))
    let text: String = self
    return text.boundingRect(with: maxSize,
                             options: .usesLineFragmentOrigin,
                             attributes: [.font: font],
                             context: nil).height + 1
  }
}
