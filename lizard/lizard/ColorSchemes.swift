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
    
    
    var primary: UIColor = .white
    var secondary: UIColor = .purple
    var tertiary: UIColor = .yellow
}

let myColorSchemes: [colorScheme] = [
//    colorScheme(name: "chosen", primary: UIColor(.white), secondary: UIColor(.purple), tertiary: UIColor(.yellow)),
//    colorScheme(name: "agent", primary: UIColor(.purple), secondary: UIColor(.yellow), tertiary: UIColor(.white)),
    colorScheme(name: "bat", primary: UIColor(.black), secondary: UIColor(.yellow), tertiary: UIColor(.orange)),
    colorScheme(name: "pink", primary: UIColor.fromHexString("#ff21f8"), secondary: UIColor.fromHexString("#ff79f8"), tertiary: UIColor.fromHexString("#ff79f8")),
    colorScheme(name: "blue", primary: UIColor(.black), secondary: UIColor(.yellow), tertiary: UIColor(.orange)),
]
