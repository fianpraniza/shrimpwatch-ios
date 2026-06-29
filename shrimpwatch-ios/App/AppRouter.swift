//
//  AppRouter.swift
//  shrimpwatch-ios
//
//  Created by Muhammad Arfian Praniza on 29/06/26.
//

import SwiftUI
import Combine

final class AppRouter: ObservableObject {
    @Published var path: [AppRoute] = []
    
    var activateRoute: AppRoute? {
        path.last
    }
    
    var isShowingHomeRoute: Bool {
        AppRoute.isHomeRoute(activeRoute)
    }
    
    func push(_ route: AppRoute) {
        path.append(route)
    }
    
    func pop() {
        guard !path.isEmpty else { return }
        path.removeLast()
    }
    
    func popToRoot() {
        path.removeLast(path.count)
    }
    
    func replace(with route: AppRoute) {
        path.removeLast(path.count)
        path.append(route)
    }
}
