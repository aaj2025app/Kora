//
//  Colors.swift
//  
//
//  Created by Alex Mansour on 10/17/25.
//

import SwiftUI

extension Color {
    static let fitGreen = Color(red: 0.08, green: 0.31, blue: 0.21)   // #104E36
    static let fitBackground = Color.white
    static let fitSoftGray = Color(red: 0.91, green: 0.95, blue: 0.92)
}

struct FitFlowTheme {
    static let primary = Color.fitGreen
    static let background = Color.fitBackground
    static let accent = Color.fitSoftGray
}
