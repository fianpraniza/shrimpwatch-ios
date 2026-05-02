//
//  dashboardView.swift
//  shrimpwatch-ios
//
//  Created by Muhammad Arfian Praniza on 02/05/26.
//

import SwiftUI

struct homeView: View {
    var body: some View {
        VStack {
            headerHome
                .padding()
            bodyHome
            Spacer()
//            footerHome
        }
    }
    
    // MARK: - Header Dashboard
    private var headerHome: some View {
        VStack {
            Text("Count Memos")
                .font(.system(size: 30, weight: .bold))
        }
        .frame(maxWidth: .infinity, alignment: .leading)
    }
    
    // MARK: - Body Dashboard
    private var bodyHome: some View {
        List {
            HStack {
                Image(systemName: "arrow.trianglehead.2.counterclockwise")
                
                Text("All Recordings")
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .lineLimit(1)
                
                NavigationLink {
                    Text("MASUKIN LINK KE PAGE ALL RECORDING") // ganti dengan tujuan page nanti
                } label: {
                    Text("100") // ganti dengan jumlah file yang ada dalam page
                        .foregroundStyle(.secondary)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
            }
            
            // Mark: My Folders
            Section(header: Text("My Folders")) {
                
                HStack {
                    Image(systemName: "folder")
                    
                    Text("Kolam A4")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .lineLimit(1)
                    
                    NavigationLink {
                        Text("MASUKIN LINK KE PAGE KOLAM A4") // ganti dengan tujuan page nanti
                    } label: {
                        Text("140000") // ganti dengan jumlah file yang ada dalam page
                            .foregroundStyle(.secondary)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }

                }

                
                HStack {
                    Image(systemName: "folder")
                    
                    Text("Kolam G2")
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .lineLimit(1)
                    
                    NavigationLink {
                        Text("MASUKIN LINK KE PAGE KOLAM G2") // ganti dengan tujuan page nanti
                    } label: {
                        Text("8") // ganti dengan jumlah file yang ada dalam page
                            .foregroundStyle(.secondary)
                            .frame(maxWidth: .infinity, alignment: .trailing)
                    }
                }
            }
        }
    }
    
    // MARK: - Footer Dashboard
//    private var footerHome: some View {
//        Text("Shrimpwatch v.1")
//            .font(.system(size: 12))
//            .foregroundStyle(.secondary)
//    }
    
}

#Preview {
    homeView()
}
