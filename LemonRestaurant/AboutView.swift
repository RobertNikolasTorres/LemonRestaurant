//
//  AboutView.swift
//  LemonRestaurant
//
//  Created by Robert Nikolas Torres on 7/2/25.
//

import SwiftUI

struct AboutView: View {
    @State private var orders = 10
    @State private var userName = "Robert"
    @State private var reservationCount = 0
    
    var body: some View {
        NavigationView {

            VStack {
                Text("Welcome \(userName) to Little Lemon!")
                    .fontWeight(.bold)
                    
                Image("littleLemonLogo")
                    .resizable()
                    .frame(width: 300, height: 80)
                Text("You've ordered \(orders) times")
                Button("Order again"){
                    orders += 1
                }
                Button("Reset"){
                    orders = 0
                }
                TextField("Enter your name", text: $userName)
                    .textFieldStyle(.roundedBorder)
                    .padding()
                
                Text("Hi \(userName), you have order \(orders) reservations today")
                    .padding(10)
                Button("Add people to the Reservation"){
                    reservationCount += 1
                }
                Text("Hi \(userName), you have order a table for \(reservationCount) today")
                    .font(.title3)
            }
            .padding(50)
            .navigationTitle("About Us")
        }
    }
}

#Preview {
    AboutView()
}
