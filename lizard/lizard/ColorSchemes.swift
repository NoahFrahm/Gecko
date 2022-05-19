//
//  ColorSchemes.swift
//  lizard
//
//  Created by Noah Frahm on 5/16/22.
//

import Foundation
import SwiftUI

//light and dark mode are not variations on same colorscheme rather they are both
//independent colorscheme structs

struct colorScheme: Hashable{
    
    let id = UUID()
    var name = "none"
    var primary: Color = .white
    var secondary: Color = .purple
    var tertiary: Color = .yellow
}

let myColorSchemes: [colorScheme] = [
    colorScheme(name: "chosen", primary: .white, secondary: .purple, tertiary: .yellow),
    colorScheme(name: "agent", primary: .purple, secondary: .yellow, tertiary: .white),
    colorScheme(name: "bat", primary: .black, secondary: .yellow, tertiary: .orange),
]
