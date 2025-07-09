//
//  MainView.swift
//  LemonRestaurant
//
//  Created by Robert Nikolas Torres on 7/5/25.
//

import SwiftUI

struct MainView: View {
    @State private var isLoggedIn: Bool = false
    @State private var userName: String = ""
    
    var body: some View {
        NavigationStack {
            if isLoggedIn == true {
                VStack {
                    NavigationLink("Make a reservation", destination: ReservationForm())
                    
                    NavigationLink("About us", destination: AboutView())
                    
                    Button("Logout") {
                        isLoggedIn = false
                        userName = ""
                    }
                }
            } else {
                LoginView(isLoggedIn: $isLoggedIn, userName: $userName)
            }
        }
        .navigationTitle("Login")
    }
}

#Preview {
    MainView()
}
