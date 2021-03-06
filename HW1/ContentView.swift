//
//  ContentView.swift
//  HW1
//
//  Created by ash mutairi on 5/3/20.
//  Copyright © 2020 Ashwaq. All rights reserved.
//

import SwiftUI


//Calculator is Done
struct CalcView: View {
    //@State var Answer = "0"
    var body: some View {
        ZStack{
            CalcBG()
            
            VStack{
                
                HStack(spacing: 10) {
                    Spacer()

                    Text("555")
                    .foregroundColor(.white)
                    .font(.system(size: 100))
                        .offset(x: 10)
                        .offset(y: 50)
                }
                
                .padding()
                
                HStack(spacing: 10) {
                    Text("C")
                    .modifier(GBModifier())
                   Text("±")
                    .modifier(GBModifier())
                   Text("%")
                    .modifier(GBModifier())
                    Text("÷")
                    .modifier(OBModifier())
                }.offset(y: 40)
                    
                HStack(spacing: 10) {
                   Text("7")
                    .modifier(GBModifier())
                   Text("8")
                    .modifier(GBModifier())
                   Text("9")
                    .modifier(GBModifier())
                   Text("x")
                    .modifier(OBModifier())
                }.offset(y: 40)
                
                HStack(spacing: 10) {
                    Text("4")
                    .modifier(GBModifier())
                   Text("5")
                    .modifier(GBModifier())
                   Text("6")
                        .modifier(GBModifier())
                   Text("-")
                    .modifier(OBModifier())
                }.offset(y: 40)
                
                HStack(spacing: 10) {
                    Text("1")
                    .modifier(GBModifier())
                   Text("2")
                    .modifier(GBModifier())
                   Text("3")
                    .modifier(GBModifier())
                   Text("+")
                    .modifier(OBModifier())
                }.offset(y: 40)
                
                HStack(spacing: 20) {
                    Text("0")
                    .modifier(GBModifier())
                        .padding(.vertical, -10)
                    .padding(.horizontal, 40)
                    .background(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
                    .clipShape(Capsule())
                   Text(".")
                    .modifier(GBModifier())
                   Text("-")
                    .modifier(OBModifier())
                }.offset(y: 40)
                
            }//end VStack
        }
        
    }
}

//Weather is Done
struct Weather: View {
     var body: some View {
     
        ZStack {
            Image("Night")
             .resizable()
            
            VStack(spacing: 15){
                
            Text("Mishif")
                .font(.largeTitle).foregroundColor(.white)
            Text("Mostly Clear")
                .foregroundColor(.white)
            Text("22°")
                .foregroundColor(.white).font(.system(size: 90))
                
                HStack(spacing:20){
                    Text("Tuesday").modifier(WT1Modifier())
                    Text("TODAY").modifier(WT3Modifier())
                    Spacer()
                    Text("31").modifier(WT3Modifier())
                    Text("24").modifier(WT3Modifier())
                }
                

                HStack(spacing:18){
                    Text("Now").modifier(WT1Modifier())
                    Text("5AM").modifier(WT1Modifier())
                    Text("6AM").modifier(WT1Modifier())
                    Text("7AM").modifier(WT1Modifier())
                    Text("8AM").modifier(WT1Modifier())
                    Text("9AM").modifier(WT1Modifier())
                    Text("10AM").modifier(WT1Modifier())
                }
                HStack(spacing:30){
                    Text("🌙").modifier(WT1Modifier())
                    Text("🌙").modifier(WT1Modifier())
                    Text("☀️").modifier(WT1Modifier())
                    Text("☀️").modifier(WT1Modifier())
                    Text("🌙").modifier(WT1Modifier())
                    Text("🌙").modifier(WT1Modifier())
                    Text("🌙").modifier(WT1Modifier())
                }
                HStack(spacing:30){
                    Text("22°").modifier(WT1Modifier())
                    Text("22°").modifier(WT1Modifier())
                    Text("22°").modifier(WT1Modifier())
                    Text("22°").modifier(WT1Modifier())
                    Text("22°").modifier(WT1Modifier())
                    Text("22°").modifier(WT1Modifier())
                    Text("22°").modifier(WT1Modifier())
                }
                VStack(spacing: 15){
                    WList()
                    WList()
                    WList()
                    WList()
                    WList()
                    WList()
                }


 
            }

   
        } .edgesIgnoringSafeArea(.all)
    }
}

//all the previews here, only remove the comment
//to see it
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        //ContentView()
        //CalcView((
        Weather()
    }
}



struct ContentView: View {
    var body: some View {

      Text("hi")
    }


}

// Calculator
struct CalcBG: View {
    var body: some View{
        
        
        ZStack {
           Image("CalcBG")
            .resizable()

        }//end ZStack
        
            .edgesIgnoringSafeArea(.all)
    }
}
//greay button modifier
struct GBModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .multilineTextAlignment(.center)
            .padding(.horizontal, 35)
            .padding(.vertical, 35)
            .background(Color(#colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)))
            .clipShape(Circle())

    }

}
//orang button modifier
struct OBModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.largeTitle)
            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .multilineTextAlignment(.center)
            .padding(.horizontal, 35)
            .padding(.vertical, 35)
            .background(Color(#colorLiteral(red: 0.9607843161, green: 0.6751942284, blue: 0.200000003, alpha: 1)))
            .clipShape(Circle())

    }

}


// Weather
struct WT1Modifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 20))
            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .multilineTextAlignment(.center)
    }
}
struct WT2Modifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 15))
            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .multilineTextAlignment(.center)
    }
}
struct WT3Modifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(size: 12))
            .foregroundColor(Color(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)))
            .multilineTextAlignment(.center)
    }
}

struct WList: View {
    var body: some View{
        
            HStack(spacing:15){
                Text("Wednesday").modifier(WT1Modifier())
                Spacer()
                Text("🌦").modifier(WT1Modifier())
                Spacer()
                Text("29").modifier(WT2Modifier())
                Text("24").modifier(WT3Modifier())
            }
    }
}
