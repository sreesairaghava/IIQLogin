//
//  Country.swift
//  IIQLogin
//
//  Created by Sree Sai Raghava Dandu on 18/09/21.
//

import Foundation

struct Country: Codable {
    let name: String
    let flag: URL?
}

struct CountryResponse: Codable {
    let items: [Country]
}
