//
//  SplashRouter.swift
//  Core_MVVM_binding
//
//  Created by Huy Vu on 22/6/25.
//

import Foundation

class SplashRouter: Router {
    
    typealias RouteType = Route
    
    enum Route: String {
        case Home

    }
    
}

extension SplashRouter {
    
    func route(to route: Route,parameters: [String: Any]? = nil ) {
        guard let context = context() else {
          return
        }
        
        switch route {
        case .Home:
            context.remake(maxLength: 0, to: HomeVC())

        }
    }
    
}

