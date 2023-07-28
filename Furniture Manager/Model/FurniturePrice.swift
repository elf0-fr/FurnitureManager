//
//  FurniturePrice.swift
//  Furniture Manager
//
//  Created by Elfo on 28/07/2023.
//

import Foundation

struct FurniturePrice: Codable {
    var currency: Currency
    var price: Double
}

enum Currency: String, Codable {
    case USD = "$"
    case EUR = "€"
    case JPY = "¥"
    case GBP = "£"
}

extension FurniturePrice {
    var displayPrice: String {
        switch currency {
            case .EUR: "\(price)\(currency)"
            case .GBP: "\(currency)\(price)"
            case .JPY: "\(currency)\(price)"
            case .USD: "\(currency)\(price)"
        }
    }
}
