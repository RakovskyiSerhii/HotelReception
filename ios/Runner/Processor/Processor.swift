//
//  Processor.swift
//  Runner
//
//  Created by Serhii Rakovskyi on 18.08.2022.
//

import Foundation
class Processor : WorldChangedListener {
    private let world: World
    private let notifier: ChannelNotifier
    private let hotel:Hotel
    
    init(world: World, notifier: ChannelNotifier, initData:InitialData) {
        self.world = world
        self.notifier = notifier
        self.hotel = Hotel.build(service: initData.service, roomByType: initData.roomByType, worldsClock: world)
        world.subscribeOnDateChanges(listener: self)
        print("starting world")
        world.startWorld()
    }
    
    func onDateChanged() {
        print("onDateChanged")
        hotel.checkDesk()
        hotel.checkInPersons(persons: PersonRandomizer().generatePersonQuery(date: hotel.getToday()))
        if  world.getDayOfMonth() == 30 {
                        hotel.payTaxes()
        }
        notifier.notifiChannel(data: HotelConverter.convertToUpdate(hotel: hotel))
    }
    
}


protocol ChannelNotifier {
    func notifiChannel(data:String)
}
