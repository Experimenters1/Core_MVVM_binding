//
//  SplashVC.swift
//  Core_MVVM_binding
//
//  Created by Huy Vu on 22/6/25.
//

import UIKit

class SplashVC: BaseViewController {
    
    private let viewModel = SplashViewModel()

     override func viewDidLoad() {
        super.viewDidLoad()
        DispatchQueue.main.asyncAfter(deadline: .now() + 9.0) { [weak self] in
            self?.viewModel.action.send(.end)
        }
    }

     override func binding() {
        super.binding()
        // Nếu cần binding thêm với viewModel thì viết ở đây
    }
    
    override func addComponents() {
        super.addComponents()
        // Thêm subview nếu cần
    }
    
    override func setConstraints() {
        super.setConstraints()
        // Setup AutoLayout nếu cần
    }
    
    override func setProperties() {
        super.setProperties()
        // Thiết lập thuộc tính view nếu cần
    }
    
    override func setColor() {
        super.setColor()
        // Thiết lập màu sắc nếu cần
    }




}
