//
//  ContentView.swift
//  Guess the Flag
//
//  Created by Atom HR on 12.09.2025.
//

import SwiftUI

struct ContentView: View {
    @State private var showingAlert = false
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Spain", "UK", "US"]
    var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        
        VStack{
            Button("Delete selection", action: executeDelete)
            

            
            
            ZStack {
                VStack(spacing: 0) {
                    Color.red
                    Color.blue
                }

                Text("Your content")
                    .foregroundStyle(.secondary)
                    .padding(50)
                    .background(.ultraThinMaterial)
            }
            .ignoresSafeArea()
            
            
            HStack(spacing: 20) {
                Color.red
                    .frame(width: 100, height: 100)
                    .cornerRadius(10)
                Color.blue.frame(width: 100, height: 100)
                    .cornerRadius(20)
                Color.green.frame(width: 100, height: 100)
                    .cornerRadius(30)
            }
            
            
            Button("Button 1") { }
                .buttonStyle(.bordered)
                .tint(.orange)
            Button("Button 2", role: .destructive) { }
                .buttonStyle(.borderedProminent)
            Button("Button 3") { }
                .buttonStyle(.borderedProminent)
                .tint(.mint)
            Button("Button 4", role: .destructive) { }
                .buttonStyle(.borderedProminent)
            
            
            Button {
                print("Button was tapped")
            } label: {
                Text("Tap me!")
                    .padding()
                    .foregroundStyle(.black)
                    .background(.red)
            }
            
            
            Button {
                print("Edit button was tapped")
            } label: {
                Image(systemName: "pencil")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.red)
            }
            
            
            Button("Edit", systemImage: "pencil") {
                print("Edit button was tapped")
            }
            
            
            
            Button {
                print("Edit button was tapped")
            } label: {
                Label("Edit", systemImage: "pencil")
                    .padding()
                    .foregroundStyle(.white)
                    .background(.red)
            }
            
            
            
            Button("Show Alert") {
                    showingAlert = true
                }
            .alert("Important message", isPresented: $showingAlert) {
                Button("OK", role: .cancel) { }
                Button("Delete", role: .destructive) { }
            } message: {
                Text("Please read this.")
            }
            
            Button("Edit", systemImage: "pencil") {
                print("Edit button was tapped")
            }
            
            
            
            
        }
    }
    
    func executeDelete() {
            print("Now deleting…")
        }
}

#Preview {
    ContentView()
}
