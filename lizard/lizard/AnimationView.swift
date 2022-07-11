//
//  AnimationView.swift
//  lizard
//
//  Created by Noah Frahm on 6/29/22.
//

import SwiftUI

struct AnimationView: View {
//    change app corner radius to scale to size
//    change blocking rect to scale to size
//    and spacing rects
    
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
    
//    currently meant for size 300
    @State var logoSize: CGFloat = CGFloat(300)
    @State var background: Color = Color(red: 148/255, green: 131/255, blue: 249/255)
    @State var screenColor: Color = Color(red: 148/255, green: 131/255, blue: 249/255)
    @State var logoColor: Color = Color(red: 83/255, green: 64/255, blue: 177/255)
    
    let pathBounds = UIBezierPath.calculateBounds(paths: [
        .final_logo_horns,
    ])
    
    //vars for flash and swipe animation
    @State var crunch_height = false
    @State var crunch_width = false
    @State var blackout = false
    @State var flash = false
    @State var pushVal: CGFloat = CGFloat(0)
    @State var loadingBar: CGFloat = CGFloat(1)
    @State var showLoad = false
    @State var drop: Bool = false
    @State var faintGlow = false
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
                            screen1(backCol: screenColor)
                                .padding(.leading, 1.4)
                            screen2(backCol: screenColor)
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
                        TurnOffView(logoSize: $logoSize, flash: $flash, crunch_height: $crunch_height, crunch_width: $crunch_width, blackout: $blackout, bonus: -60)
                        
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
                        Image(uiImage: UIImage(named: "reflection")!)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 500, height: 30)
                            .opacity(faintGlow ? 1 : 0)
                        Rectangle()
                            .foregroundColor(.clear)
                            .frame(width: 1, height: 2)
                    }
                    Rectangle()
                        .foregroundColor(.clear)
                        .frame(width: 1, height: 80)
                }
                .frame(width: logoSize/3, height: 700)
            }
            .ignoresSafeArea(edges: .top)
            
            HStack{
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
                //this button animates the loading bar
                Button(action: {
                    let delay = CGFloat(0.9)
                    
                    withAnimation(.easeIn(duration: 1)){
                        loadingBar = 76
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.9) {
                        self.showLoad = false
                    }
                    DispatchQueue.main.asyncAfter(deadline: .now() + delay){
                        self.drop.toggle()
                        self.faintGlow.toggle()
                    }
                    withAnimation(.linear(duration: 0).delay(0 + delay)){
                        self.expand.toggle()
                    }
                    withAnimation(.easeIn(duration: 0.4).delay(1 + delay)){
                        self.logoColor = darkPink
                        self.background = lightPink
                    }
                }){
                    Text("load")
                }
                //bring in the background and logo colors
//                Button(action: {
//                    _ = CGFloat(0)
//                    withAnimation(.easeIn(duration: 1).delay(0.1)){
//                        self.logoColor = darkPink
//                        self.background = lightPink
//                        self.faintGlow.toggle()
//                    }
//                }){
//                    Text("flicker")
//                }
                
                Button(action: {
                    let delay1: Double = Double(1)
                    let delay2: Double = Double(2)

//                    swipe
                    withAnimation(){
                        if (pushVal > 0){
                            pushVal = 0
                        }
                        else {
                            self.pushVal = 200
                        }
                    }
                    
//                    flash
                    DispatchQueue.main.asyncAfter(deadline: .now() + delay1) {
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
                    }
                    
                    
//                    load
                    DispatchQueue.main.asyncAfter(deadline: .now() + delay1 + delay2){
                        let delay = CGFloat(0.9)
                        
                        withAnimation(.easeIn(duration: 1)){
                            loadingBar = 76
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.9) {
                            self.showLoad = false
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + delay){
                            self.drop.toggle()
                            self.faintGlow.toggle()
                        }
                        withAnimation(.linear(duration: 0).delay(0 + delay)){
                            self.expand.toggle()
                        }
                        withAnimation(.easeIn(duration: 0.4).delay(1 + delay)){
                            self.logoColor = darkPink
                            self.background = lightPink
                        }
                    }
                    
                }){
                    Text("flicker")
                }
            }.padding(.bottom, 50)
        }
    }
    
}

//rounded rectangle phone then logo screen then horns grow

struct screenScaledDown: View {
    
    var appSize: CGFloat = CGFloat((300/3)/4)
    var appRounding: CGFloat = CGFloat(8)
    var logoSize: CGFloat = CGFloat(300)
    var appSpacing: CGFloat = CGFloat(5)
    var backCol: Color = .blue
    var padding = 20
    var pushdown: CGFloat = CGFloat(1)
    
    
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
            VStack(spacing: appSpacing){
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 30, height: 18)
                HStack(spacing: 5){
                    AppIconView(appSize: appSize * 2 + appSpacing, appRounding: appRounding)
                        .padding(.leading, 0)
                    VStack(spacing: appSpacing){
                        AppIconView(appSize: appSize, appRounding: appRounding)
                        AppIconView(appSize: appSize, appRounding: appRounding)
                    }
                }
                
                ForEach(0..<2){ _ in
                HStack(spacing: appSpacing){
                    ForEach(0..<3){ _ in
                        AppIconView(appSize: appSize, appRounding: appRounding)
                    }
                }
                    .padding([.trailing, .leading])
                }
            }
            .padding([.top, .bottom], 20)
            .frame(width: (logoSize)/3, height: (logoSize)*0.8, alignment: .top)
            
        }
        .frame(width: (logoSize)/3, height: (logoSize)*0.8)
    }

}


struct screenScaledDown2: View {
    
    var appSize: CGFloat = CGFloat((300/3)/4)
    var appRounding: CGFloat = CGFloat(8)
    var logoSize: CGFloat = CGFloat(300)
    var appSpacing: CGFloat = CGFloat(5)
    var backCol: Color = .blue
    var padding = 20

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
                Rectangle()
                    .foregroundColor(.clear)
                    .frame(width: 30, height: 18)
                HStack(spacing: appSpacing){
                    ForEach(0..<3){ _ in
                        AppIconView(appSize: appSize, appRounding: appRounding)
                    }
                }
                HStack(spacing: appSpacing){
                    ForEach(0..<3){ _ in
                        AppIconView(appSize: appSize, appRounding: appRounding)
                    }
                }
//                HStack(spacing: appSpacing){
//                    ForEach(0..<3){ _ in
//                        AppIconView(appSize: appSize, appRounding: appRounding)
//                    }
//                }

                HStack(spacing: 5){
                    VStack(spacing: 5){
                        AppIconView(appSize: appSize, appRounding: appRounding)
                        AppIconView(appSize: appSize, appRounding: appRounding)
                    }
                    AppIconView(appSize: appSize * 2 + appSpacing, appRounding: appRounding)
                        .padding(.leading, 0)
                }
//                HStack(spacing: appSpacing){
//                    ForEach(0..<3){ _ in
//                        AppIconView(appSize: appSize, appRounding: appRounding)
//                    }
//                }
                
//                HStack(spacing: 5){
//                    AppIconView(appSize: 55, appWidth: 85, appRounding: appRounding)
//                        .padding(.leading, 0)
//                }
                
//                HStack(spacing: appSpacing){
//                    ForEach(0..<1){ _ in
//                        AppIconView(appSize: appSize, appRounding: appRounding)
//                    }
//                    ForEach(0..<2){ _ in
//                        AppIconView(appSize: appSize, appRounding: appRounding, appColor: .clear)
//                    }
//                }
            }
            .padding([.top, .bottom], 20)
            .frame(width: (logoSize)/3, height: (logoSize)*0.8, alignment: .top)
            
        }
        .frame(width: (logoSize)/3, height: (logoSize)*0.8)
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
