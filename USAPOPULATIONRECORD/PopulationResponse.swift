//
//  PopulationResponse.swift
//  USAPOPULATIONRECORD
//
//  Created by Vikram Kunwar on 17/04/23.
//

import Foundation

struct Welcome: Codable {
    let data: [Datum]
   // let source: [Source]
}



struct Datum: Codable {
    let idNation, nation: String
    let idYear: Int
    let year: String
    let population: Int
    let slugNation: String

    enum CodingKeys: String, CodingKey {
        case idNation = "ID Nation"
        case nation = "Nation"
        case idYear = "ID Year"
        case year = "Year"
        case population = "Population"
        case slugNation = "Slug Nation"
    }
}
