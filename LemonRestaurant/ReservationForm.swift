//
//  ReservationForm.swift
//  LemonRestaurant
//
//  Created by Robert Nikolas Torres on 7/4/25.
//

import SwiftUI

struct ReservationForm: View {
    @State private var name: String = ""
    @State private var guestCount: Int = 1
    
    var body: some View {
        
        NavigationView {
            
            Form {
                Image("littleLemonLogo")
                    .resizable()
                    .frame(width: 300, height: 70)
                
                Section(header: Text("Reservation Details")) {
                    
                    VStack(alignment: .leading) {
                        TextField("Name", text: $name)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                        
                        if name.isEmpty {
                            Text("Please enter your name")
                                .foregroundColor(.red)
                                .font(.caption)
                        }
                    
                        Stepper("Guests: \(guestCount)", value: $guestCount, in: 1...10)
                        
                        if guestCount > 5 {
                            Text("For large parties, we will contact you")
                                .foregroundColor(.blue)
                                .font(.caption)
                        }
                    }
                    
                    Button(action: {
                    }) {
                        Text("Confirm Reservation")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(name.isEmpty ? Color.gray : Color.blue)
                            .foregroundColor(.white)
                            .cornerRadius(8)
                    }
                    .disabled(name.isEmpty)
                }
            }
        }
    }
}
struct ReservationForm_Previews: PreviewProvider {
    static var previews: some View {
        ReservationForm()
    }
}
