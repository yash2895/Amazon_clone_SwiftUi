//
//  GradientBackground.swift
//  Amazon_clone
//
//  Created by yash chandat  on 10/08/25.
//

import SwiftUI

extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var rgb: UInt64 = 0
        scanner.scanHexInt64(&rgb)
        let r = Double((rgb >> 16) & 0xFF) / 255.0
        let g = Double((rgb >> 8) & 0xFF) / 255.0
        let b = Double(rgb & 0xFF) / 255.0
        self.init(.sRGB, red: r, green: g, blue: b, opacity: 1)
    }
}
struct AmazonTopBarGradient: ShapeStyle {
    func _apply(to shape: inout _ShapeStyle_Shape) {
        LinearGradient(
            gradient: Gradient(colors: [
                Color(red: 177/255, green: 229/255, blue: 224/255),
                Color(red: 111/255, green: 214/255, blue: 197/255)
            ]),
            startPoint: .topLeading,
            endPoint: .bottomTrailing
        )._apply(to: &shape)
    }
}

