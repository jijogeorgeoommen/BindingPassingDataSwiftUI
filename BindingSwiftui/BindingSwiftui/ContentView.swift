//
//  ContentView.swift
//  BindingSwiftui
//
//  Created by Jijo G Oommen on 24/04/24.
//

import SwiftUI

struct ContentView: View {
    @State var isNight = true
    @State var isShowingSheet = false
    var body: some View {
        ZStack{
            Color(isNight ? .black : .black).ignoresSafeArea()
            VStack{
                TimeofDayImage(imageTitle: isNight ? "moon1" : "sun3")
                Text(isNight ? "we have moon" : "we have sun").foregroundColor(.white)
                Button (action: {
                    isShowingSheet = true
                }, label: {
                    ButtonLabel(title : "Change", imageName : "clock", color :.green)
                    
                })
            }
        }.sheet(isPresented: $isShowingSheet, content: {
            ChangeTimeofDay(isNight: $isNight)
        })
    }
}

//MARK:- IMAGE
struct TimeofDayImage : View {
    var imageTitle : String
    
    var body: some View {
       
        Image(imageTitle)
            .resizable()
            .renderingMode(.original)
            .aspectRatio(contentMode: .fit)
            .frame(width: 180, height: 180)
    }
}

//MARK:- CUSTOME BUTTON
struct ButtonLabel : View {
    var title : String
    var imageName : String
    var color : Color
    
    var body: some View {
        Label(title,systemImage: imageName)
            .frame(width: 200, height: 40)
            .background(color)
            .foregroundColor(.white)
            .cornerRadius(12)
            .padding()
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
        }
    }
}
