//
//  ModelData.swift
//  LandMarks
//
//  Created by Daniel Kubong on 7/9/22.
//

import Foundation
import Combine

final class ModelData: ObservableObject {
    @Published var landmarks: [Landmark] = load("landmarkData.json")
    var hikes: [Hike] = load("hikeData.json")
    @Published var profile = Profile.default
    
    //computed array for only featured landmarks
    var features: [Landmark] {
        landmarks.filter{ $0.isFeatured }
    }
    
    //computed categories dictionary
    var categories: [String: [Landmark]] {
        Dictionary (
            grouping: landmarks,
            by: {$0.category.rawValue}
        )
    }
}


func load<T: Decodable>(_ filename: String) -> T{
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        fatalError("Could not find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError( "Could not find \(filename) in main bundle. \n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode( T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self): \n\(error)")
    }
}

