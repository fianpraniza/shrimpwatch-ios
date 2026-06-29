//
//  AppRouteBuilder.swift
//  shrimpwatch-ios
//
//  Created by Muhammad Arfian Praniza on 28/06/26.
//

import SwiftUI

struct AppRouteBuilder {
    @ViewBuilder
    static func build(_ route: AppRoute) -> some View {
        switch route {
        case .home(let homeRoute):
            HomeRouteBuilder.build(homeRoute)
        }
    }
}
