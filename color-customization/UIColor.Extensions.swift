//
//  UIColor.Extensions.swift
//  color-customization
//
//  Created by Yurii Dukhovnyi on 21.07.2022.
//

import UIKit

extension UIColor {

    convenience init(hex: Int, alpha: CGFloat = 1.0) {

        self.init(
            red: CGFloat((hex >> 16) & 0xff) / 255.0,
            green: CGFloat((hex >> 8) & 0xff) / 255.0,
            blue: CGFloat(hex & 0xff) / 255.0,
            alpha: alpha
        )
    }
}

enum ThemeA {
    static let brand: UIColor = .init(hex: 0xFCD835)
    static let gray10: UIColor = .init(hex: 0xeae9e9)
    static let gray25: UIColor = .init(hex: 0x252525)
    static let gray44: UIColor = .init(hex: 0x444444)
    static let gray73: UIColor = .init(hex: 0x737373)
    static let blue: UIColor = .init(hex: 0x5d5cf8)
    static let brandNavigationTint: UIColor = .init(hex: 0x1f0b1a)
    static let darkTeal: UIColor = .init(hex: 0x045D5D)
    static let teal10: UIColor = .init(hex: 0xCDDFDF)
    static let mediumTeal: UIColor = .init(hex: 0x9BBEBE)
    static let teal80: UIColor = .init(hex: 0x4F8E8E)
}
