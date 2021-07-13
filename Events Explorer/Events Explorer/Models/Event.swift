//
//  Event.swift
//  Events Explorer
//
//  Created by Ken Nyame on 7/12/21.
//
import Foundation

struct Event: Identifiable, Decodable {
    let id: Int
    let title: String
    let datetimeLocal: Date
    let venue: Venue
    let performers: [Performer]?
}

struct Venue: Identifiable, Decodable {
    let id: Int
    let displayLocation: String
}

struct Performer: Identifiable, Decodable {
    let id: Int
    let name: String
    let image: String?
}


