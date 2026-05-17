//
//  EmptyState.swift
//  shrimpwatch-ios
//
//  Created by Muhammad Arfian Praniza on 03/05/26.
//

import SwiftUI

struct EmptyState: View {
    var body: some View {
        Text("You don't have this session")
            .font(.system(size: 20, weight: .bold))
            .opacity(0.5)
    }
}

#Preview {
    EmptyState()
}
