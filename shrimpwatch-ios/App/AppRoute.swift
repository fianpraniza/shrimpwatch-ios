//
//  AppRoute.swift
//  shrimpwatch-ios
//
//  Created by Muhammad Arfian Praniza on 28/06/26.
//

import Foundation

enum AppRoute: Hashable {
    case home(HomeRoute)
}

extension AppRoute {
    static func isHomeRoute(_ route: AppRoute?) -> Bool {
        guard let route else {
            return true
        }
        
        if case .home = route {
            return true
        }
        
        return false
    }
}
