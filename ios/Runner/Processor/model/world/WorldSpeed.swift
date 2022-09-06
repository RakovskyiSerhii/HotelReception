//
//  WorldSpeed.swift
//  Runner
//
//  Created by Serhii Rakovskyi on 17.08.2022.
//

import Foundation

enum WorldSpeed :Codable {
    case normal
    case fast
    case faster
    
    var description : String {
        switch self {
        case .normal:
            return "normal"
        case .fast:
            return "fast"
        case .faster:
            return "faster"
        }
    }
}
