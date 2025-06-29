//
//  SplashViewModel.swift
//  Core_MVVM_binding
//
//  Created by Huy Vu on 22/6/25.
//

import Foundation
import Combine

class SplashViewModel: BaseViewModel {
    enum Action {
        case end
    }
    
    let action = PassthroughSubject<Action, Never>()
    private let router = SplashRouter()
    
    override init() {
        super.init()
        
        // Subscriptions
        action.sink(receiveValue: { [weak self] action in
            guard let self else {
                return
            }
            processAction(action)
        }).store(in: &subscriptions)
        
    }
    
}


extension SplashViewModel {
    private func processAction(_ action: Action) {
        switch action {
        case .end:
            router.route(to: .Home)
        }
    }
    
}
