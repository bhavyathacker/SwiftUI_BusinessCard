//
//  InfoView.swift
//  SwiftUI_BusinessCard
//
//  Created by Bhavya Thacker on 29/01/22.
//

import SwiftUI

struct InfoView: View {
    let imageName : String
    let text:String
    var body: some View {
        RoundedRectangle(cornerRadius: 25)
            .fill(.white)
            .frame(height: 50)
            .overlay {
                HStack{
                    Image(systemName: imageName).foregroundColor(.green)
                    Text(text)
                }
            }
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(imageName: "phone.fill", text: "12345")
            .previewLayout(.sizeThatFits)//this is to just occupy space as needs to be, not the whole screen in preview
    }
}
