//
//  ContentView.swift
//  lizard
//
//  Created by Noah Frahm on 5/16/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var fill = false
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Rectangle()
                    .frame(width: 300, height: 30)
            }
            Rectangle()
                .frame(width: fill ? 300: 30, height: 30)
            Button(action: {
                withAnimation{
                    fill.toggle()
                }
            }){
                Text("load")
            }
        }
//        TabView{
//        AnimationView()
//            TshirtView()
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
