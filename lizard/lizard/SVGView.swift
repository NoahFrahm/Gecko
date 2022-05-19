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
    
    let primary = UIColor.fromHexString("29ABE2")
    let secondary = UIColor.fromHexString("0A62BC")
    let tertiary = UIColor.fromHexString("29ABE2")
    let pathBounds = UIBezierPath.calculateBounds(paths: [
//        .ctLogo1, .ctLogo2,
//            .AppTeam2,
//            .AppTeam2
//        .AppTeam3
                .testShapeY
    ])
    
    var body: some View {
        ZStack{
//            ShapeView(bezier: .ctLogo1, pathBounds: pathBounds)
//                .trim(from: 0, to: endAmount)
//                .stroke(Color(primary), lineWidth: 2)
//            ShapeView(bezier: .ctLogo2, pathBounds: pathBounds)
//                .trim(from: 0, to: endAmount)
//                .stroke(Color(secondary), lineWidth: 2)

            ShapeView(bezier: .testShapeY, pathBounds: pathBounds)
                .fill(Color(primary))
            
//            ShapeView(bezier: .ctLogo1, pathBounds: pathBounds)
//                .fill(Color(primary)).opacity(isFilled ? 1 : 0)
//            ShapeView(bezier: .ctLogo2, pathBounds: pathBounds)
//                .fill(Color(secondary)).opacity(isFilled ? 1 : 0)
        }
        .frame(width: 50, height: 200)
//        .onAppear{
//            self.isFilled = false
//            self.endAmount = 0
//            withAnimation(.easeInOut(duration: 2)){
//                self.endAmount = 1
//            }
//            withAnimation(
////                Animation.easeInOut.delay(2)
//                Animation.easeInOut(duration: 3)
////                Animation.easeInOut(duration: 5).delay(2)
//            ){
//                self.isFilled = true
//            }
//        }
    }
}

struct SVGView_Previews: PreviewProvider {
    static var previews: some View {
        SVGView()
    }
}
