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
                HStack{
                    Text("create new color scheme!")
                    Image(systemName: "plus")
                }
                
                Picker("Scheme", selection: $selectedColorScheme) {
                    ForEach(colorSchemes, id: \.self) {current in
                        Text(current.name)
                    }
                }
                .pickerStyle(.segmented)
                
                Spacer()
                pallet(selectedColorScheme: $selectedColorScheme)
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
        VStack{
            Text("t-shirt")
            Divider()
            Rectangle().foregroundColor(selectedColorScheme.primary)
            Divider()
            Rectangle().foregroundColor(selectedColorScheme.secondary)
            Divider()
            Rectangle().foregroundColor(selectedColorScheme.tertiary)
            Divider()
        }
    }
}
