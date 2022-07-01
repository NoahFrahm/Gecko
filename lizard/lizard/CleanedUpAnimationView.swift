//
//  CleanedUpAnimationView.swift
//  lizard
//
//  Created by Noah Frahm on 7/1/22.
//

import SwiftUI

struct CleanedUpAnimationView: View {
    
    var appSize: CGFloat = CGFloat((300/3)/4)
    var appRounding: CGFloat = CGFloat(8)
    var appSpacing: CGFloat = CGFloat(5)
        
    var darkPurp: Color = Color(red: 83/255, green: 64/255, blue: 177/255)
    var lightPurp: Color = Color(red: 148, green: 131, blue: 249)
    var darkGray: Color = Color(red: 25/255, green: 25/255, blue: 25/255)
    var darkPink: Color = Color(red: 255/255, green: 0/255, blue: 153/255)
    var lightPink: Color = Color(red: 255/255, green: 118/255, blue: 209/255)
    
    var screenWidth = UIScreen.main.bounds.width
    var screenHeight = UIScreen.main.bounds.height
    
    @State var logoSize: CGFloat = CGFloat(300)
    @State var background: Color = Color(red: 148/255, green: 131/255, blue: 249/255)
    @State var screenColor: Color = Color(red: 148/255, green: 131/255, blue: 249/255)
    @State var logoColor: Color = Color(red: 83/255, green: 64/255, blue: 177/255)
    
    let pathBounds = UIBezierPath.calculateBounds(paths: [
        .final_logo_horns,
    ])
    
    let gradient = Gradient(
            stops: [
                .init(color: .green.opacity(0.4), location: 0),
                .init(color: .green.opacity(0.5), location: 0.7),
                .init(color: .green.opacity(0), location: 1),
            ]
        )
    
    //vars for flash and swipe animation
    @State var crunch_height = false
    @State var crunch_width = false
    @State var blackout = false
    @State var flash = false
    @State var pushVal: CGFloat = CGFloat(0)
    @State var loadingBar: CGFloat = CGFloat(1)
    @State var showLoad = false
    @State var blast = false
    
    @State var drop: Bool = false
    @State var expand: Bool = false
    
    var body: some View {
        VStack{
            ZStack{
                background
                
                //this vstack contains the screens
                VStack{
                    RoundedRectangle(cornerRadius: 0)
                        .foregroundColor(.clear)
                        .frame(width: 2, height: 40)
                    ZStack{
                        //this hstack has the two screens and rectangles that we use
                        //to push screens left to right
                        HStack(spacing: 0){
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: 88, height: 20)
                            screen(backCol: screenColor)
                            screen(backCol: screenColor)
                            Rectangle()
                                .foregroundColor(.clear)
                                .frame(width: pushVal, height: 20)
                        }
                            .frame(width: screenWidth, height: 400)
                        //this vstack contains the static bottom row of apps that don't slide
                        //on swipe
                        VStack{
                            Spacer()
                            HStack(alignment: .center, spacing: 5){
                                AppIconView(appSize: appSize, appRounding: appRounding)
                                AppIconView(appSize: appSize, appRounding: appRounding)
                                    .padding([.trailing], 10)
                            }
                        }
                        .frame(width: logoSize/3, height: logoSize*0.6)
                    }
                }
                
                //this is the screen flash
                VStack{
                    RoundedRectangle(cornerRadius: 0)
                        .foregroundColor(.clear)
                        .frame(width: 20, height: 10)
                    ZStack{
                        TurnOffView(logoSize: $logoSize, flash: $flash, crunch_height: $crunch_height, crunch_width: $crunch_width, blackout: $blackout)
                        
                        loadingBarView(logoSize: $logoSize,showLoad: $showLoad, loadingBar: $loadingBar)
                            .opacity(showLoad ? 1: 0)
                        
                        //this is the new color
//                        RoundedRectangle(cornerRadius: 20)
//                            .foregroundColor(lightPink)
//                            .frame(width: logoSize, height: logoSize*0.75)
//                        .opacity(blast ? 1 : 0)
                        
                        Circle()
                            .fill(lightPink)
                            .frame(width: expand ? 235: 10, height: expand ? 300: 10)
                            .padding(.trailing, 10)
                            .opacity(drop ? 1 : 0)
                            
                        
                        
                    }
                }
                    
                //hstack with left right blocking rects to hide the screens
                HStack{
                    Rectangle()
                        .foregroundColor(background)
                        .frame(width: 143, height: 400)
                    Spacer()
                    Rectangle()
                        .foregroundColor(background)
                        .frame(width: 146, height: 400)
                }
                
                //this is the horns logo with a hole cut out of the center
                ShapeWithHole(backy: pathBounds)
                    .foregroundColor(logoColor)
                    .frame(width: logoSize, height: logoSize)
                
                VStack(alignment: .leading){
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: logoSize*0.65, height: 553)
                    HStack{
                    Trapezoid(percent: 41 )
                        .fill(
                            LinearGradient(
                                colors: [lightPink, .black],
                                startPoint: .top,
                                endPoint: .bottom)
                        )
                        .frame(width: logoSize * 2, height: 300)
                        .opacity(drop ? 1:0)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 1, height: 1)
                    }
                }
                .frame(width: logoSize/3, height: 700)
            }
            .ignoresSafeArea()
            
            
            
            HStack{
                //this button animates the loading bar
                Button(action: {
                    let delay = CGFloat(0.9)
//                    withAnimation(.easeIn(duration: 3)){
//                        loadingBar = 34
//                    }
//                    withAnimation(.linear(duration: 1.5).delay(3)){
//                        loadingBar = 52
//                    }
//                    withAnimation(.easeIn(duration: 0.5).delay(4.5)){
//                        loadingBar = 76
//                    }
//                    DispatchQueue.main.asyncAfter(deadline: .now() + 4.5) {
//                        blast = true
//                        self.screenColor = lightPink
//                        self.background =  lightPink
//                        self.logoColor = darkPink
//
//                    }
                    
                    withAnimation(.easeIn(duration: 1)){
                        loadingBar = 76
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.9) {
                        self.showLoad = false
//                        blast = true
//                        self.screenColor = lightPink
//                        self.background =  lightPink
//                        self.logoColor = darkPink
                        
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + delay) {self.drop.toggle()
                        
                    }
                    withAnimation(.linear(duration: 0).delay(0 + delay)){
                        self.expand.toggle()
                    }
//                    withAnimation(.easeIn(duration: 1).delay(0.1 + delay)){
//                        self.background = lightPink
//                    }
//                    withAnimation(.easeIn(duration: 1).delay(0.1 + delay)){
//                        self.logoColor = darkPink
//                    }
                    
                }){
                    Text("load")
                }
                //animates the swipe
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
                //this button animates screen flash
                Button(action: {
                    let delaying = 0.0
                    self.flash.toggle()
                    
                    withAnimation{
                        self.background = .black
                        self.logoColor = Color(red: 25/255, green: 25/255, blue: 25/255)
                    }
                    withAnimation(.easeIn.delay(delaying)){
                        self.crunch_height.toggle()
                    }
                    withAnimation(.easeIn.delay(0.05 + delaying)){
                        self.crunch_width.toggle()
                    }
                    withAnimation(.easeIn.delay(0.1 + delaying)){
                        self.blackout.toggle()
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                        self.showLoad.toggle()
                    }
                }) {
                    Text("flash")
                }
                //drop of color
                Button(action: {
                    let delay = CGFloat(0)
//                    self.drop.toggle()
//                    withAnimation(.linear(duration: 1).delay(0)){
//                        self.expand.toggle()
//                    }
//                    withAnimation(.easeIn(duration: 1).delay(0.1)){
//                        self.background = lightPink
//                    }
//                    withAnimation(.easeIn(duration: 1).delay(0.1)){
//                        self.logoColor = darkPink
//                    }
//                    withAnimation(.linear(duration: 1).delay(3)){
//                        self.expand.toggle()
//                    }
//                    5 flickers
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.3 + delay) {
                        self.logoColor = darkPink
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.4 + delay) {
                        self.logoColor = darkGray
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.45 + delay) {
                        self.logoColor = darkPink
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5 + delay) {
                        self.logoColor = darkGray
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.55 + delay) {
                        self.logoColor = darkPink
                    }
                    
                }){
                    Text("flicker")
                }
                
            }
        }
    }
}

struct CleanedUpAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        CleanedUpAnimationView()
    }
}

struct Trapezoid: Shape {
  @State var percent: Double
  func path(in rect: CGRect) -> Path {
    var path = Path()
    let edge = rect.width * CGFloat(percent/100)
    path.move(to: CGPoint(x: rect.minX + edge, y: rect.minY))
    path.addLine(to: CGPoint(x: rect.maxX - edge, y: rect.minY ))
    path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY ))
    path.addLine(to: CGPoint(x: rect.minX, y: rect.maxY))
    path.closeSubpath()
    return path
  }
}

struct loadingBarView: View {
    
    @Binding var logoSize: CGFloat
    @Binding var showLoad: Bool
    @Binding var loadingBar: CGFloat
    
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: logoSize/3, height: 25)
            }
            ZStack(alignment: .leading){
                RoundedRectangle(cornerRadius: 6)
                    .foregroundColor(Color(red: 25/255, green: 25/255, blue: 25/255))
                    .frame(width: 76, height: 5)
                    .padding(.leading, 6)
                RoundedRectangle(cornerRadius: 6)
                    .foregroundColor(.white)
                    .frame(width: loadingBar, height: 5)
                    .padding(.leading, 6)
            }
            Spacer()
        }
        .opacity(showLoad ? 1:0)
        .frame(width: 90, height: 50)
    }
}


struct TurnOffView: View {
    
    @Binding var logoSize: CGFloat
    @Binding var flash: Bool
    @Binding var crunch_height: Bool
    @Binding var crunch_width: Bool
    @Binding var blackout: Bool
    
    var flashColor: Color = .white
    var backColor: Color = .black
    
    var body: some View {
        ZStack{
            //full black
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(backColor)
                .frame(width: logoSize, height: logoSize*0.75)
                .opacity(flash ? 1 : 0)
            //full white
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(flashColor)
                .frame(width: crunch_width ? 10: logoSize, height: crunch_height ? 10: logoSize*0.75)
                .opacity(flash ? 1 : 0)
            RoundedRectangle(cornerRadius: 20)
                .foregroundColor(blackout ? backColor : .clear)
                .frame(width: logoSize, height: logoSize*0.75)
            
        }
    }
}
