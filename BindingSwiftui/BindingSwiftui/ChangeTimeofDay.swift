//
//  ChangeTimeofDay.swift
//  BindingSwiftui
//
//  Created by Jijo G Oommen on 24/04/24.
//

import SwiftUI

struct ChangeTimeofDay: View {
    @Binding var isNight : Bool
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack{
            Button(action: {
                isNight = true
                presentationMode.wrappedValue.dismiss()
            }, label: {
                ButtonLabel(title: "Make night", imageName: "moon", color: .black)
            })
            
            Button(action: {
                isNight = false
                presentationMode.wrappedValue.dismiss()
            }, label: {
                ButtonLabel(title: "Make Day", imageName: "cloud.sun.fill", color: .blue)
            })
        }
    }
}

struct ChangeTimeofDay_Previews: PreviewProvider {
    static var previews: some View {
        ChangeTimeofDay(isNight: .constant(false))
    }
}
