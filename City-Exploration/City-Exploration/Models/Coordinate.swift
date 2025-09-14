//
//  Coordinate.swift
//  City-Exploration
//
//  Created by Rodrigo Torres on 14/09/2025.
//

struct Coordinate: Codable {
    let longitude: Double
    let latitude: Double
    
    enum CodingKeys: String, CodingKey {
        case longitude = "lon"
        case latitude = "lat"
    }
    
}
