//
//  City.swift
//  City-Exploration
//
//  Created by Rodrigo Torres on 14/09/2025.
//

struct City: Codable, Identifiable {
    let country: String
    let name: String
    let coordinate: Coordinate
    let identifier: Int
    
    var id: Int { identifier }
    
    enum CodingKeys: String, CodingKey {
        case country
        case name
        case coordinate = "coord"
        case identifier = "_id"
    }
    
}
