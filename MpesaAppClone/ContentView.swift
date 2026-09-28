//
//  ContentView.swift
//  MpesaAppClone
//
//  Created by Muktar Hussein on 27/05/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()import SwiftUI

struct ContentView: View {
    @State private var showDemo = false

    var body: some View {
        VStack(spacing: 20) {

            Image(systemName: "mobilephone")
                .font(.system(size: 50))

            Text("M-Pesa Demo")
                .font(.largeTitle)
                .bold()

            Button("Simulate Demo Payment") {
                showDemo = true
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()
        .alert("DEMO TRANSACTION", isPresented: $showDemo) {
            Button("OK", role: .cancel) { }
        } message: {
            Text("""
            NOT A REAL M-PESA PAYMENT

            Amount: KSh 500
            From: 0752268673
            Reference:0726619066
            Status: SUCCESS (SIMULATED)
            """)
        }
    }
}

#Preview {
    ContentView()
}
}
