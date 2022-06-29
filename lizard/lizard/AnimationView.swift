//
//  AnimationView.swift
//  lizard
//
//  Created by Noah Frahm on 6/29/22.
//

import SwiftUI

struct AnimationView: View {
    @State var endAmount: CGFloat = 0
    @State var isFilled: Bool = false
    @State var phoneFilled: Bool = false
    
//    @State var animate: colorScheme
//    300 is our image size
    
    var primary: UIColor = myColorSchemes[0].primary
    var secondary: UIColor = myColorSchemes[0].secondary
    var tertiary: UIColor = myColorSchemes[0].tertiary
    
    var appSize: CGFloat = CGFloat((300/3)/4)
    var appRounding: CGFloat = CGFloat(8)
    var logoSize: CGFloat = CGFloat(300)
    var appSpacing: CGFloat = CGFloat(5)
    
    var screenWidth = UIScreen.main.bounds.width
    var screenHeight = UIScreen.main.bounds.height
    
    let background: Color = .white
    let pathBounds = UIBezierPath.calculateBounds(paths: [
        .final_logo_horns,
//        .final_logo_phone
    ])
    
    @State var pushVal: CGFloat = CGFloat(0)
    
//    magic piece of code
//    ShapeWithHole(backy: pathBounds)
//        .frame(width: 300, height: 300)
    
    
    var body: some View {
        VStack{
            ZStack{
                Color.white
                VStack{
                    RoundedRectangle(cornerRadius: 0)
                        .foregroundColor(.clear)
                        .frame(width: 2, height: 40)
                    HStack(spacing: 0){
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 88, height: 20)
                        screen()
                        screen()
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: pushVal, height: 20)
                    }
                    .frame(width: screenWidth, height: 400)
                }
                ShapeWithHole(backy: pathBounds)
                    .frame(width: 300, height: 300)
//                left right blocking rects
                HStack{
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: 143, height: 400)
                    Spacer()
                    Rectangle()
                        .foregroundColor(.white)
                        .frame(width: 146, height: 400)
                }
                ShapeWithHole(backy: pathBounds)
                    .frame(width: 300, height: 300)
                
            }.ignoresSafeArea()
            Button(action: {
                withAnimation(){
                    if (pushVal > 0){
                        pushVal = 0
                    }
                    else {
                        self.pushVal = 200
                    }
                }
            }) {
                Text("swipe")
            }
        }
    }
}

struct AnimationView_Previews: PreviewProvider {
    static var previews: some View {
        AnimationView()
    }
}

extension Path {
    var reversed: Path {
        let reversedCGPath = UIBezierPath(cgPath: cgPath)
            .reversing()
            .cgPath
        return Path(reversedCGPath)
    }
}

struct ShapeWithHole: Shape {
    
    var backy: CGRect
    
    func path(in rect: CGRect) -> Path {
        let back = CGRect(x: backy.width, y: backy.height, width: backy.maxX, height: backy.maxY)
        
        var path = ShapeView(bezier: .final_logo_horns, pathBounds: back).path(in: back)
        let hole = ShapeView(bezier: .final_logo_phone, pathBounds: back).path(in: back).reversed
        path.addPath(hole)
        
        let pointScale = (rect.width >= rect.height) ? max(back.height, back.width) : min(back.height, back.width)
        let pointTransform = CGAffineTransform(scaleX: 1/pointScale, y: 1/pointScale)
        path = Path(path.cgPath).applying(pointTransform)
        let multiplier = min(rect.width, rect.height)
        let transform = CGAffineTransform(scaleX: multiplier, y: multiplier)
        return path.applying(transform)
    }
}


struct screen: View {
    
    var appSize: CGFloat = CGFloat((300/3)/4)
    var appRounding: CGFloat = CGFloat(8)
    var logoSize: CGFloat = CGFloat(300)
    var appSpacing: CGFloat = CGFloat(5)
    var backCol: Color = .purple

    var body: some View {
        ZStack{
            VStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 30, height: 8)
                RoundedRectangle(cornerRadius: 0)
                    .foregroundColor(backCol)
                    .frame(width: (logoSize)/3, height: (logoSize)*0.75)
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 30, height: 39)
            }
            .frame(width: 300, height: 300)
            VStack(){
                ForEach(0..<4){ _ in
                    HStack(spacing: appSpacing){
                        ForEach(0..<3){ _ in
                            AppIconView(appSize: appSize, appRounding: appRounding)
                        }
                    }
                    .padding([.trailing, .leading])
                }
                HStack(spacing: appSpacing){
                    ForEach(0..<2){ _ in
                        AppIconView(appSize: appSize, appRounding: appRounding)
                    }
                    HStack(spacing: appSpacing){
                        AppIconView(appSize: appSize, appRounding: appRounding, appColor: .clear)
                    }
                    
                }
                .padding([.trailing, .leading])
                
//                    this is the bottom row apps we need to move them out into another rect
//                    HStack(spacing: appSpacing){
//                        ForEach(0..<2){ _ in
//                            AppIconView(appSize: appSize, appRounding: appRounding)
//                        }
//                    }
//                    .padding([.top,.bottom])
                
            }
            .padding([.top, .bottom], 20)
            .frame(width: (logoSize)/3, height: (logoSize)*0.8, alignment: .top)
            
        }
        .frame(width: (logoSize)/3, height: (logoSize)*0.8)
    }

}


struct AppIconView: View {
    
    var appSize: CGFloat
    var appRounding: CGFloat
    var appColor: Color = .black
    
    var body: some View {
        RoundedRectangle(cornerRadius: appRounding)
            .foregroundColor(appColor)
            .frame(width: appSize, height: appSize)
    }
}
