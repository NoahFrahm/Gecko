//
//  TshirtView.swift
//  lizard
//
//  Created by Noah Frahm on 5/16/22.
//

import SwiftUI

struct TshirtView: View {
    
    @State var selectedColorScheme = myColorSchemes[0]
    @State var colorSchemes = myColorSchemes
    
    var body: some View {
//        NavigationView{
            VStack{
//                HStack{
//                    Spacer()
//                    Text("create new color scheme!")
//                    Image(systemName: "plus")
//                }.padding([.trailing])
                
                Picker("Scheme", selection: $selectedColorScheme) {
                    ForEach(colorSchemes, id: \.self) {current in
                        Text(current.name)
                        
                    }
                }
                .pickerStyle(.segmented)
                
                pallet(selectedColorScheme: $selectedColorScheme)
                
                SVGView(
                    animate: $selectedColorScheme,
                    primary: $selectedColorScheme.primary,
                    secondary: $selectedColorScheme.secondary,
                    tertiary: $selectedColorScheme.tertiary
                )
                
                Spacer()
            }
//        }
    }
}

struct TshirtView_Previews: PreviewProvider {
    static var previews: some View {
        TshirtView()
    }
}

struct pallet: View {
    
    @Binding var selectedColorScheme: colorScheme
    
    var body: some View {
        HStack{
            Divider()
            VStack{
                ColorBoxView(color: selectedColorScheme.primary)
                Text("Horns")
            }
            VStack{
                ColorBoxView(color: selectedColorScheme.secondary)
                Text("Screen")
            }
            VStack{
                ColorBoxView(color: selectedColorScheme.tertiary)
                Text("background")
            }
            Divider()
        }
        .frame(width: .infinity, height: 100)
    }
}

struct ColorBoxView: View {
    
    var color: UIColor
    
    var body: some View {
        ZStack{
            Rectangle().foregroundColor(Color(color))
            Rectangle()
                .stroke(Color(.black), lineWidth: 2)
        }
    }
}
