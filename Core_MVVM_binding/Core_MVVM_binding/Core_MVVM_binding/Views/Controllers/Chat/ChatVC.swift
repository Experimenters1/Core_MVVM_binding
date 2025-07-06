//
//  ChatVC.swift
//  Core_MVVM_binding
//
//  Created by Huy Vu on 2/7/25.
//

import UIKit

class ChatVC: BaseViewController {
  
  @IBOutlet weak var chatCollection: UICollectionView!
  
  private let test = "vdvsdjhvdjvdabvadvbjdvhdvbjdbvjkdbvjbdavbdavbdkvbdavbjdbvbdjavdahcdjdcnjvbjadvdkvdvfieofeofjdnvjjjbbbbdbjabvjdvjdhfdjskdafjaebfjbfjbaejbfdjahcdhvidvvdbjjvhv"
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // Do any additional setup after loading the view.
  }
  
  override func setProperties() {
    super.setProperties()
    chatCollection.registerNib(ofType: WaitingAnswerChatCVC.self)
    chatCollection.dataSource = self
    chatCollection.delegate = self
  }
  
  
}

extension ChatVC: UICollectionViewDataSource, UICollectionViewDelegate {
  func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 2
  }
  
  func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeue(ofType: WaitingAnswerChatCVC.self, indexPath: indexPath)
//    cell.setViewModel(test)
    return cell
  }
  
  
}


extension ChatVC: UICollectionViewDelegateFlowLayout {
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      sizeForItemAt indexPath: IndexPath
  ) -> CGSize {
    let containerWidth = collectionView.width
//            let font = AppFont.font(.interRegular, size: 14.0)
//            
//            // Lấy text cho cell (có thể thay đổi theo indexPath nếu cần)
//            let text = test
//            
//            // Tính chiều cao sử dụng hàm static của AnswerChatCVC
//            let height = AnswerChatCVC.calculateCellHeight(for: text,
//                                                         containerWidth: containerWidth,
//                                                         font: font)
//            
//            return CGSize(width: containerWidth, height: height)
    
   let  heightT = WaitingAnswerChatCVC.calculateCellHeight()
//    return CGSize(width: collectionView.width,
//                  height: 32.0)
    
    return CGSize(width: containerWidth, height: heightT)
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      insetForSectionAt section: Int
  ) -> UIEdgeInsets {
    
    
    return UIEdgeInsets(top: 24.0,
                        left: .zero,
                        bottom: 24.0 + 21.0,
                        right: .zero)
    
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      minimumLineSpacingForSectionAt section: Int
  ) -> CGFloat {
    
    return 20.0
    
  }
  
  func collectionView(_ collectionView: UICollectionView,
                      layout collectionViewLayout: UICollectionViewLayout,
                      minimumInteritemSpacingForSectionAt section: Int
  ) -> CGFloat {
    
    return 20.0
    
  }
}
