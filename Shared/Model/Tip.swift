//
//  Tip.swift
//  TrekrMultiPlatform
//
//  Created by Diego Sierraalta on 2022-01-25.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
