//
//  LoginView.swift
//  LemonRestaurant
//
//  Created by Robert Nikolas Torres on 7/5/25.
//

import SwiftUI

struct LoginView: View {
    @Binding var isLoggedIn: Bool
    @Binding var userName: String
    
    var body: some View {
        NavigationStack {
            VStack {
                Image("littleLemonLogo")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 180)
                
                TextField("Enter your name: ", text: $userName )
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Button("Login") {
                    if userName == "Robert" {
                        isLoggedIn = true
                    }
                }
            }
        }
        .padding()
        .navigationTitle("Login")
    }
}

//#Preview {
//    LoginView()
//}
