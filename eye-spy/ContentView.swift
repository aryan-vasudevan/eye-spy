//
//  ContentView.swift
//  eye-spy
//
//  Created by Aryan Vasudevan on 2025-07-23.
//

import SwiftUI
import Roboflow

struct ContentView: View {
    @State private var showCamera = false
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Button(action: { showCamera = true }) {
                Text("Find My Glasses")
                    .font(.title2)
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
        }
        .padding()
        .sheet(isPresented: $showCamera) {
            CameraOverlayView()
        }
    }
}

#Preview {
    ContentView()
}
