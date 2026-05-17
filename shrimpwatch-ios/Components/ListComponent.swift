//
//  ListComponent.swift
//  shrimpwatch-ios
//
//  Created by Muhammad Arfian Praniza on 02/05/26.
//

import SwiftUI

struct ListMemo: View {
    let iconName: String
    let title: String
    
    var body: some View {
            HStack {
                Image(systemName: iconName)
                Text(title)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(1)
            }
    }
}

struct ListCounterLog: View {
    let title: String
    let date: String
    let time: String
    let amount: String
    
    var body: some View {
            HStack {
                VStack(alignment: .leading) {
                    Text(title)
                        .font(.system(size: 20, weight: .medium))
                        .lineLimit(1)
                    HStack {
                        Text(date)
                        Text(time)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .foregroundStyle(.secondary)
                    .font(.system(size: 12))
                    .lineLimit(1)
//                    .background(.black)
                }
                
                Text(amount)
                    .frame(maxWidth: 100, alignment: .trailing)
                    .foregroundStyle(.secondary)
//                    .background(.black)
            }
    }
}

#Preview {
    Spacer()
    ListMemo(
        iconName: "arrow.trianglehead.2.counterclockwise",
        title: "All Recordings"
    )
    .padding()
    Spacer()
    ListCounterLog(
        title: "Counter 4",
        date: "30 December 2026",
        time: "•󠁏󠁏 14.23 WIB",
        amount: "734")
        .padding()
    Spacer()
}
