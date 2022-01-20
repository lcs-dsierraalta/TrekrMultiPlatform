//
//  LocationStore.swift
//  TrekrMultiPlatform
//
//  Created by Diego Sierraalta on 2022-01-19.
//

import Foundation

class LocationStore: ObservableObject {
    
    var places: [Location]
    
    init() {
        
        // Get a pointer to the file
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        
        // Load the contents of the JSON file
        let data = try! Data(contentsOf: url)
        
        // Convert the data from the JSON file to the array
        places = try! JSONDecoder().decode([Location].self, from: data)
        
        // Sort the list of locations alphabetically by name, in ascending order
        places.sort(by: {
            $0.name < $1.name
        })
    }
}

var testStore = LocationStore()
