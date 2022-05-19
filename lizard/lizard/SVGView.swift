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
    
//    let primary = UIColor.fromHexString("29ABE2")
    let primary = UIColor.fromHexString("ff21f8")
    let secondary = UIColor.fromHexString("#ff79f8")
//    let secondary = .white

    let tertiary = UIColor.fromHexString("29ABE2")
    let pathBounds = UIBezierPath.calculateBounds(paths: [
//        .ctLogo1, .ctLogo2,
//            .AppTeam2,
//            .AppTeam2
//        .AppTeam3
//                .testShapeZ
//        .floopy2
        .tryLogo4
    ])
    
    var body: some View {
        ZStack{
//            ShapeView(bezier: .ctLogo1, pathBounds: pathBounds)
//                .trim(from: 0, to: endAmount)
//                .stroke(Color(primary), lineWidth: 2)
//            ShapeView(bezier: .ctLogo2, pathBounds: pathBounds)
//                .trim(from: 0, to: endAmount)
//                .stroke(Color(secondary), lineWidth: 2)

            ShapeView(bezier: .finalHorns, pathBounds: pathBounds)
                .fill(Color(primary)).opacity(isFilled ? 1 : 0)
            ShapeView(bezier: .finalScreen, pathBounds: pathBounds)
                .fill(Color(secondary)).opacity(isFilled ? 1 : 0)
            
            ShapeView(bezier: .finalHorns, pathBounds: pathBounds)
                        .trim(from: 0, to: endAmount)
                        .stroke(Color(primary), lineWidth: 2)
            ShapeView(bezier: .finalScreen, pathBounds: pathBounds)
                        .trim(from: 0, to: endAmount)
                        .stroke(Color(primary), lineWidth: 2)
            
            
            
//            ShapeView(bezier: .ctLogo1, pathBounds: pathBounds)
//                .fill(Color(primary)).opacity(isFilled ? 1 : 0)
//            ShapeView(bezier: .ctLogo2, pathBounds: pathBounds)
//                .fill(Color(secondary)).opacity(isFilled ? 1 : 0)
        }
        .frame(width: 100, height: 400)
        .onAppear{
            self.isFilled = false
            self.endAmount = 0
            withAnimation(.easeInOut(duration: 2)){
                self.endAmount = 1
            }
            withAnimation(
//                Animation.easeInOut.delay(2)
//                Animation.easeInOut(duration: 4)
                Animation.easeInOut(duration: 4)
            ){
                self.isFilled = true
            }
        }
    }
}

struct SVGView_Previews: PreviewProvider {
    static var previews: some View {
        SVGView()
    }
}
