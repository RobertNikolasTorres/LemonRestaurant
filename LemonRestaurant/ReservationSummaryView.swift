//
//  ReservationSummaryView.swift
//  LemonRestaurant
//
//  Created by Robert Nikolas Torres on 7/7/25.
//

import SwiftUI

struct ReservationSummaryView: View {
    let name: String
    let date: Date
    let guests: Int
    let allergyNotes: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("Reservation Completed!")
                .font(.title)
                .background(Color.green)
            Text("Thank you, \(name), your reservation is confirmed for \(guests) people.")
                
            Text("Name: \(name)")
            Text("Date: \(formattedDate(date))")
            Text("Guests: \(guests)")
            Text("We will accomodate the following allergies: \(allergyNotes)")
        }
    }
    func formattedDate(_ date: Date)->String{
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        
        return formatter.string(from: date)
        
    }
}

//#Preview {
//    ReservationSummaryView()
//}
