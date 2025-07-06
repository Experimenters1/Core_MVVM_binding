//
//  WaitingAnswerChatCVC.swift
//  ChatGPT
//
//  Created by  on 4/4/25.
//

import UIKit
import Lottie

class WaitingAnswerChatCVC: BaseCollectionViewCell {
  @IBOutlet weak var animationView: LottieAnimationView!
  @IBOutlet weak var thumbnailImageView: UIImageView!
  
  // Constants từ XIB layout
  static let thumbnailViewHeight: CGFloat = 32.0     // Chiều cao thumbnail container
  static let animationViewHeight: CGFloat = 32.0     // Chiều cao animation view
  static let horizontalPadding: CGFloat = 16.0       // Padding trái (chỉ có trái)
  static let verticalPadding: CGFloat = 0.0          // Top + bottom padding
  
  // Hàm tính chiều cao cell
  static func calculateCellHeight() -> CGFloat {
      // Tổng chiều cao = thumbnail height + animation height + padding
      let totalHeight = thumbnailViewHeight + animationViewHeight + verticalPadding
      return totalHeight
  }
  
  override func setProperties() {
    animationView.contentMode = .scaleAspectFill  // Thay đổi từ .scaleToFill thành .scaleAspectFit
       animationView.loopMode = .loop
       animationView.animation = LottieAnimation.named("WatingAnswer")
       animationView.play()
  }
  

}

extension WaitingAnswerChatCVC {

}
