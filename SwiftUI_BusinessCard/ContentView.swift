//
//  ContentView.swift
//  SwiftUI_BusinessCard
//
//  Created by Bhavya Thacker on 29/01/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.teal.edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("diamond").resizable().aspectRatio(contentMode: .fit)
                    .padding(8.0)
                    .frame(width: 200, height: 200)
                    .overlay{
                        Circle()
                            .stroke(lineWidth:5).foregroundColor(.white)
                    }
                Text("Diamond")
                    .font(Font.custom("sofia_pro_regular", size: 40))
                    .padding()
                    .foregroundColor(.white)
                Divider()
                InfoView(imageName: "phone.fill", text: "+91 9099368007")
                InfoView(imageName: "envelope.fill", text: "bhavyathacker@gmail.com")
            }            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


