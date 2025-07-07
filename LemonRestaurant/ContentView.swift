//
//  ContentView.swift
//  LemonRestaurant
//
//  Created by Robert Nikolas Torres on 7/2/25.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            
            VStack {
                Image("littleLemonLogo")
                Image(systemName: "keyboard")
                    .imageScale(.large)
                    .foregroundStyle(.red)
                Text("Hello, Cohort 1!")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.red)
                NavigationLink(destination: AboutView()) {
                    Text("Go to About")
                }
            }
            .padding()
            .navigationTitle("Home")
        }
    }
}

#Preview {
    ContentView()
}
