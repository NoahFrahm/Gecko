//
//  SVGView.swift
//  lizard
//
//  Created by Noah Frahm on 5/17/22.
//

import SwiftUI

struct SVGView: View {
    
    @State var endAmount: CGFloat = 0
    @State var isFilled: Bool = false
    @State var phoneFilled: Bool = false
    
    @Binding var animate: colorScheme
    
    @Binding var primary: UIColor
//    = UIColor.fromHexString("6dcdf0")
    @Binding var secondary: UIColor
//    = UIColor.fromHexString("#ff79f8")
    @Binding var tertiary: UIColor
//    = UIColor.fromHexString("29ABE2")
    let background: Color = .white
    
//    let primary = UIColor.fromHexString("6dcdf0")
//    let primary  = UIColor.fromHexString("4B9CD3")
//    let primary = UIColor.fromHexString("ff21f8")
//    let secondary = UIColor.fromHexString("#ff79f8")
//    let secondary: UIColor = .white
//    let tertiary = UIColor.fromHexString("29ABE2")
    
    let pathBounds = UIBezierPath.calculateBounds(paths: [
        .final_logo_horns,
        .final_logo_phone
    ])
    
    var body: some View {
        ZStack{
            
//            background
            isFilled ? Color(tertiary): .white
            VStack{
                ZStack{
//                Color(tertiary)
//                isFilled ? Color(.green): Color(.yellow)
                
                
                ShapeView(bezier: .final_logo_horns, pathBounds: pathBounds)
                    .fill(Color(primary)).opacity(isFilled ? 1 : 0)
                    
                ShapeView(bezier: .final_logo_phone, pathBounds: pathBounds)
                        .fill(phoneFilled ? Color(secondary): .white)
                    
                    //MARK: for pink animation
//                        .fill(Color(secondary)).opacity(phoneFilled ? 1 : 0)


//                    .fill(phoneFilled ? Color(secondary): Color(tertiary))
//                        .fill(phoneFilled ? Color(.black): Color(.white))
    //                .opacity(isFilled ? 1 : 0)
                
                
                
                ShapeView(bezier: .final_logo_horns, pathBounds: pathBounds)
                            .trim(from: 0, to: endAmount)
                            .stroke(Color(primary), lineWidth: 2)
                ShapeView(bezier: .final_logo_phone, pathBounds: pathBounds)
                            .trim(from: 0, to: endAmount)
                            .stroke(Color(primary), lineWidth: 2)

            }
            .frame(width: 300, height: 300)
            }
            .onChange(of: animate){ _ in
                self.isFilled = false
                self.endAmount = 0
                self.phoneFilled = false
                
                withAnimation(.easeInOut(duration: 2.5)){
                    self.endAmount = 1
                }
                withAnimation(.easeIn(duration: 1.5).delay(0.5)){
                    self.phoneFilled = true
                }
                withAnimation(
                    Animation.easeInOut(duration: 3)
                ){
                    self.isFilled = true
                }
            }
            .onAppear{
                withAnimation(.easeInOut(duration: 2.5)){
                    self.endAmount = 1
                }
                withAnimation(.easeIn(duration: 1.5).delay(0.5)){
                    self.phoneFilled = true
                }
                
                withAnimation(Animation.easeInOut(duration: 3)){
                    self.isFilled = true
                }
            }
            
        }.ignoresSafeArea()
    }
}

struct SVGView_Previews: PreviewProvider {
    static var previews: some View {
        SVGView(
            animate: .constant(colorScheme(name: "chosen", primary: UIColor(.purple), secondary: UIColor(.purple), tertiary: UIColor(.yellow))),
            primary: .constant(UIColor.fromHexString("6dcdf0")),
            secondary: .constant(UIColor.fromHexString("6dcdf0")),
            tertiary: .constant(UIColor.fromHexString("ff79f8"))
        )
    }
}
