//
//  DashboardCounterView.swift
//  shrimpwatch-ios
//
//  Created by Muhammad Arfian Praniza on 17/05/26.
//

import SwiftUI

struct DashboardCounterView: View {
    var body: some View {
        VStack {
            bodyHome
        }
    }
    
    // MARK: - Body Dashboard
    private var bodyHome: some View {
        
        List {
            
            NavigationLink {
                CounterLogView()
            } label: {
                ListMemo(
                    iconName: "arrow.trianglehead.2.counterclockwise",
                    title: "All Recordings"
                )
            }
            
            NavigationLink {
                DeletedLogView()
            } label: {
                ListMemo(
                    iconName: "trash",
                    title: "Recently Deleted")
            }
            
            
             // Mark: My Folders
            Section(header: Text("My Folders")) {
                
                NavigationLink {
                    Text("empty kolam A4")
                } label: {
                    ListMemo(
                        iconName: "folder",
                        title: "Kolam A4")
                }
                
                NavigationLink {
                    Text("empty Kolam G2")
                } label: {
                    ListMemo(
                        iconName: "folder",
                        title: "Kolam G2")
                }
                
                
            }
        }
    }
    
}

#Preview {
    DashboardCounterView()
}
