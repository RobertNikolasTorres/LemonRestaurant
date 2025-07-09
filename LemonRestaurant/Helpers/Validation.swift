//
//  Validation.swift
//  LemonRestaurant
//
//  Created by Robert Nikolas Torres on 7/7/25.
//

import Foundation

struct Validation {
    static func isValidName(_ name: String)->Bool{
        return name.count > 2
    }
    
    static func isValidGuestCount(_ guest: Int)->Bool{
        return guest > 0
    }
}
