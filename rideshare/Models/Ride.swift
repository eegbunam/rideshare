//
//  Ride.swift
//  rideshare
//
//  Created by Ebuka Egbunam on 8/3/21.
//

import Foundation



struct Ride {
    
    
    var numberOfPeople : Int
    var id : String
    var destination : Location
    var creator: User
    var createdFrom : Location
    
    static func createFakeRides() -> [Ride]{
        var finalRides : [Ride] = []
        for i in 0...20{
            let ride = Ride(numberOfPeople: i, id: UUID().uuidString, destination: Location(fixThis: "Nowhere"), creator: User(id: UUID().uuidString, rides: [], name: "ebuka\(i)", email: "egb\(i)@gmail.com", password: "nothing"), createdFrom: Location(fixThis: "Nowhere"))
            finalRides.append(ride)
        }
        
        return finalRides
    }
    
}



