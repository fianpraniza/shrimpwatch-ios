//
//  HomeRouteBuilder.swift
//  shrimpwatch-ios
//
//  Created by Muhammad Arfian Praniza on 28/06/26.
//

import SwiftUI

struct HomeRouteBuilder {
    @ViewBuilder
    static func build (_ route: HomeRoute) -> some View {
        switch route {
        case .main:
            HomeView(viewModel: HomeViewModel())
        }
    }
}
