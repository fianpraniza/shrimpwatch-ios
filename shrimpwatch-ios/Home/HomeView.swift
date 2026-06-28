//
//  HomeView.swift
//  shrimpwatch-ios
//
//  Created by Muhammad Arfian Praniza on 17/05/26.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationLink {
            DashboardCounterView()
                .navigationTitle("Count Memos")
        } label: {
            Text("Larvae Counter")
        }
        
        NavigationLink {
            FeedingCalculatorView() // untuk mengetahui kebutuhan pakan pada tahap blind feeding atau hingga panen
                .navigationTitle("Feeding Calculator")
        } label: {
            Text("Feeding Calculator")
        }
        
        NavigationLink {
            GenerateFeedingProgramView() // untuk membuat program pakan pada tahap blind feeding atau hingga panen
                .navigationTitle("Generate Feeding Program")
        } label: {
            Text("Generate Feeding Program")
        }
        
        NavigationLink {
            DashboardAIAssistantView()
                .navigationTitle("AI Assistant")
        } label: {
            Text("AI Assistant")
        }
        
        NavigationLink {
            GuidingView()
                .navigationTitle("Panduan Penggunaan")
        } label: {
            Text("Panduan Penggunaan")
        }
        
        NavigationLink {
            CameraYolo()
        } label: {
            Text("Camera Yolo")
        }
    }
}

#Preview {
    HomeView()
}
