//
//  JSONLoader.swift
//  City-Exploration
//
//  Created by Rodrigo Torres on 14/09/2025.
//

import Foundation
@testable import City_Exploration

enum JSONLoader {
    static func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
        let bundle = Bundle(for: BundleToken.self)
        guard let url = bundle.url(forResource: filename, withExtension: "json") else {
            fatalError("Missing file: \(filename).json")
        }
        
        do {
            let data = try Data(contentsOf: url)
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            fatalError("Error decoding \(filename).json: \(error)")
        }
    }
}

private final class BundleToken { }
