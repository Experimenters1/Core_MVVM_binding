//
//  AnswerChatCVC.swift
//  ChatGPT
//
//  Created by  on 4/4/25.
//

import UIKit
import Combine

class AnswerChatCVC: BaseCollectionViewCell {
  @IBOutlet weak var answerLabel: UILabel!
  @IBOutlet weak var thumbnailImageView: UIImageView!
  
  // Constants từ XIB layout
  static let horizontalStackHeight: CGFloat = 32.0  // Chiều cao của thumbnail + "Chatbot" label
  static let verticalSpacing: CGFloat = 10.0        // Spacing giữa stack view và answer label
  static let horizontalPadding: CGFloat = 32.0      // 16px trái + 16px phải
  static let verticalPadding: CGFloat = 0.0         // Top + bottom padding của main stack view
  
  // Hàm tính chiều cao cell dựa trên nội dung
  static func calculateCellHeight(for text: String,
                                 containerWidth: CGFloat,
                                 font: UIFont) -> CGFloat {
      // Tính width của answer label
      let answerLabelWidth = containerWidth - horizontalPadding
      
      // Tính chiều cao của answer label dựa trên text
      let answerLabelHeight = text.heightText(width: answerLabelWidth, font: font)
      
      // Tổng chiều cao = horizontal stack + spacing + answer label + padding
      let totalHeight = horizontalStackHeight + verticalSpacing + answerLabelHeight + verticalPadding
      
      return totalHeight
  }

}


extension AnswerChatCVC {
  func setViewModel(_ viewModel: String) {
    answerLabel.text = viewModel
  }
}
