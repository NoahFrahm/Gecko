//
//  ContentView.swift
//  lizard
//
//  Created by Noah Frahm on 5/16/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        TabView{
            TshirtView()
//                .tabItem {
//                    Label("Menu", systemImage: "list.dash")
//                }
//            SVGView()
//                .tabItem {
//                    Label("SVG", systemImage: "list.dash")
//                }
//        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
