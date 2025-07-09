//
//  ReservationForm.swift
//  LemonRestaurant
//
//  Created by Robert Nikolas Torres on 7/4/25.
//

import SwiftUI

struct ReservationForm: View {
    @State private var userName: String = ""
    @State private var guestCount: Int = 1
    @State private var reservationDate = Date()
    @State private var allergyNotes: String = ""
    @State private var showSummary = false
    
    var body: some View {
        NavigationStack {
            Image("littleLemonLogo")
                .resizable()
                .frame(width: 300, height: 70)
            Form {
                Section(header: Text("Reservation Details")) {
                    VStack(alignment: .leading) {
                        
                        TextField("Name", text: $userName)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                            if userName.isEmpty {
                                Text("Please enter your name")
                                    .foregroundColor(.red)
                            }

                        if !Validation.isValidName(userName) {
                            
                        }
                        

                        Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...10)
                        
                        if guestCount >= 5, guestCount <= 8 {
                            Text("For large parties, please arrive 10 minutes early")
                                .foregroundColor(.yellow)
                                .font(.caption)
                        } else if guestCount > 8 {
                            Text("For parties larger than 8, we will call to confirm")
                                .foregroundColor(.red)
                                .font(.caption)
                        }
                       
                            
                        
                        DatePicker("Date", selection: $reservationDate,
                            displayedComponents: [.date, .hourAndMinute])
                            
                            if reservationDate < Date() {
                                    Text("Please select a valid date")
                                        .foregroundColor(.red)
                            }
  
                        TextField("Enter Allergies", text: $allergyNotes)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        Button("Confirm Reservation") {
                            if !userName.isEmpty {
                                showSummary=true
                            }
                        }
                        .disabled(userName.isEmpty)
                        .navigationDestination(isPresented: $showSummary){
                            ReservationSummaryView(
                                name: userName,
                                date: reservationDate,
                                guests: guestCount,
                                allergyNotes: allergyNotes
                                
                            )
                        }
                    }
                }
            }
            .navigationTitle("Book a table")
        }
    }
}
#Preview {
        ReservationForm()
}
