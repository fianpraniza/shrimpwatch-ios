//
//   CounterLogView.swift
//  shrimpwatch-ios
//
//  Created by Muhammad Arfian Praniza on 02/05/26.
//

import SwiftUI

struct CounterLogView: View {
    var body: some View {
        ZStack {
            bodyCounterLog
            startCount
                .frame(maxHeight: .infinity, alignment: .bottom)
        }
    }
    
    private var bodyCounterLog: some View {
        List {
            NavigationLink {
                Text("empty") //ganti ke PAGE yang diinginkan
            } label: {
                ListCounterLog(
                    title: "Counter 1", //ganti ke TITLE yang dinamis
                    date: "26 January 2025", //ganti ke DATE saat digunakan
                    time: "•󠁏󠁏 12.53 WIB", //ganti ke TIME saat digunakan
                    amount: "523") //ganti ke AMOUNT saat terdeteksi
            }
            
            NavigationLink {
                Text("empty") //ganti ke page yang diinginkan
            } label: {
                ListCounterLog(
                    title: "Counter 2",
                    date: "19 May 2026",
                    time: "•󠁏󠁏 23.42 WIB",
                    amount: "940")
            }
            
            NavigationLink {
                Text("empty") //ganti ke page yang diinginkan
            } label: {
                ListCounterLog(
                    title: "Counter 3",
                    date: "03 February 2026",
                    time: "•󠁏󠁏 05.12 WIB",
                    amount: "395")
            }
            
            NavigationLink {
                Text("empty") //ganti ke page yang diinginkan
            } label: {
                ListCounterLog(
                    title: "Counter 4",
                    date: "30 December 2026",
                    time: "•󠁏󠁏 14.23 WIB",
                    amount: "734")
            }
            
        }
        .navigationTitle("All Recordings") // ganti ke sesi yang sesuai folder yang dipilih
    }
    
    private var startCount: some View {
        Image(systemName: "circle.fill")
            .font(.system(size: 70))
            .foregroundStyle(.red)
    }
}

#Preview {
    CounterLogView()
}
