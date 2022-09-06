//
//  HotelReception.swift
//  Runner
//
//  Created by Serhii Rakovskyi on 18.08.2022.
//

import Foundation

protocol HotelReception {
    func checkoutCustomers()
    func checkInPersons(persons: Array<Person>)
    func checkRoomsNeedRepairing()
    func renewRoomsAfterRepairing()
}
