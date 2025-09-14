//
//  CityTests.swift
//  City-Exploration
//
//  Created by Rodrigo Torres on 14/09/2025.
//

import XCTest
@testable import City_Exploration

final class CityTests: XCTestCase {
    
    func testInitializationWithCities() {
        let mockData: [City] = JSONLoader.load("cities-mock")
        
        XCTAssertFalse(mockData.isEmpty)
        XCTAssertEqual(mockData.count, 40)
    }
    
    func testInitializationIndividual() {
        let mockData: [City] = JSONLoader.load("cities-mock")
        
        XCTAssertEqual(mockData.first?.country, "US")
        XCTAssertEqual(mockData.first?.name, "Alabama")
        XCTAssertEqual(mockData.first?.id, 1)
        XCTAssertEqual(mockData.first?.coordinate.longitude, -86.79113)
        XCTAssertEqual(mockData.first?.coordinate.latitude, 32.377716)
    }
    
    func testInitializationWithCitiesEmpty() {
        let mockData: [City] = JSONLoader.load("cities-mock-empty")
        
        XCTAssertTrue(mockData.isEmpty)
        XCTAssertEqual(mockData.count, 0)
    }
    
    func testPerformanceLoadingCities() {
        let mockData: [City] = JSONLoader.load("cities-mock")
        XCTAssertFalse(mockData.isEmpty)
        XCTAssertEqual(mockData.count, 40)
        
        self.measure {
            let searchResults = mockData.filter { $0.name.lowercased().hasPrefix("al") }
            XCTAssertGreaterThan(searchResults.count, 0)
        }
    }
    
}

